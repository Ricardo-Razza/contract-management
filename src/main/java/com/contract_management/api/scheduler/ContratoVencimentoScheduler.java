package com.contract_management.api.scheduler;

import com.contract_management.api.model.Contrato;
import com.contract_management.api.model.EquipeContrato;
import com.contract_management.api.model.EquipeMembro;
import com.contract_management.api.model.NotificacaoVencimentoEnviada;
import com.contract_management.api.model.Servidor;
import com.contract_management.api.repository.ContratoRepository;
import com.contract_management.api.repository.EquipeContratoRepository;
import com.contract_management.api.repository.NotificacaoVencimentoEnviadaRepository;
import com.contract_management.api.service.EmailAlertaService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
@Slf4j
public class ContratoVencimentoScheduler {

    private final ContratoRepository contratoRepository;
    private final EquipeContratoRepository equipeContratoRepository;
    private final NotificacaoVencimentoEnviadaRepository notificacaoRepository;
    private final EmailAlertaService emailAlertaService;

    private static final int[] DIAS_ALERTA = {90, 60, 30};

    @Scheduled(cron = "0 0 8 * * *")
    @Transactional
    public void verificarContratosVencendo() {
        for (int dias : DIAS_ALERTA) {
            LocalDate dataAlvo = LocalDate.now().plusDays(dias);
            List<Contrato> contratos = contratoRepository.findByDataFim(dataAlvo);

            if (contratos.isEmpty()) {
                continue;
            }

            // Remove contratos que já foram notificados para esse marco de dias
            List<Long> todosIds = contratos.stream()
                    .map(Contrato::getId)
                    .collect(Collectors.toList());

            List<Long> jaNotificados = notificacaoRepository
                    .findContratoIdsJaNotificados(todosIds, dias);

            List<Contrato> contratosPendentes = contratos.stream()
                    .filter(c -> !jaNotificados.contains(c.getId()))
                    .collect(Collectors.toList());

            if (contratosPendentes.isEmpty()) {
                log.info("Todos os contratos vencendo em {} dias já foram notificados.", dias);
                continue;
            }

            // Busca equipes/membros/servidores em lote (evita N+1)
            List<Long> idsPendentes = contratosPendentes.stream()
                    .map(Contrato::getId)
                    .collect(Collectors.toList());

            List<EquipeContrato> equipes = equipeContratoRepository
                    .findByContratoIdInComMembros(idsPendentes);

            Map<Long, List<EquipeContrato>> equipesPorContrato = equipes.stream()
                    .collect(Collectors.groupingBy(eq -> eq.getContrato().getId()));

            for (Contrato contrato : contratosPendentes) {
                List<EquipeContrato> equipesDoContrato =
                        equipesPorContrato.getOrDefault(contrato.getId(), List.of());

                notificarEquipe(contrato, equipesDoContrato, dias);
                registrarNotificacaoEnviada(contrato, dias);
            }
        }
    }

    private void notificarEquipe(Contrato contrato, List<EquipeContrato> equipes, int diasRestantes) {
        if (equipes.isEmpty()) {
            log.warn("Contrato {}/{} vence em {} dias mas não tem equipe vinculada",
                    contrato.getNumero(), contrato.getAno(), diasRestantes);
            return;
        }

        for (EquipeContrato equipe : equipes) {
            for (EquipeMembro membro : equipe.getMembros()) {
                Servidor servidor = membro.getServidor();

                try {
                    emailAlertaService.enviarAlertaVencimento(
                            servidor.getEmail(),
                            servidor.getNome(),
                            contrato.getNumero(),
                            contrato.getAno(),
                            diasRestantes
                    );

                    log.info("Alerta de {} dias enviado para {} (contrato {}/{})",
                            diasRestantes, servidor.getEmail(),
                            contrato.getNumero(), contrato.getAno());

                } catch (Exception e) {
                    log.error("Falha ao enviar e-mail para {} (servidor id={}, contrato {}/{}): {}",
                            servidor.getEmail(), servidor.getId(),
                            contrato.getNumero(), contrato.getAno(), e.getMessage());
                }
            }
        }
    }

    private void registrarNotificacaoEnviada(Contrato contrato, int diasAlerta) {
        NotificacaoVencimentoEnviada registro = NotificacaoVencimentoEnviada.builder()
                .contrato(contrato)
                .diasAlerta(diasAlerta)
                .dataFimReferencia(contrato.getDataFim())
                .enviadoEm(LocalDateTime.now())
                .build();

        notificacaoRepository.save(registro);
    }
}