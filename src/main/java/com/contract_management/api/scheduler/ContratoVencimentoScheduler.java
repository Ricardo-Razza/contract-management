package com.contract_management.api.scheduler;

import com.contract_management.api.model.Contrato;
import com.contract_management.api.model.EquipeContrato;
import com.contract_management.api.model.EquipeMembro;
import com.contract_management.api.model.Servidor;
import com.contract_management.api.repository.ContratoRepository;
import com.contract_management.api.service.EmailAlertaService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;

@Component
@RequiredArgsConstructor
@Slf4j
public class ContratoVencimentoScheduler {

    private final ContratoRepository contratoRepository;
    private final EmailAlertaService emailAlertaService;

    private static final int[] DIAS_ALERTA = {90, 60, 30};

    @Scheduled(cron = "0 0 8 * * *")
    @Transactional
    public void verificarContratosVencendo() {
        for (int dias : DIAS_ALERTA) {
            LocalDate dataAlvo = LocalDate.now().plusDays(dias);
            List<Contrato> contratos = contratoRepository.findByDataFimComEquipe(dataAlvo);

            for (Contrato contrato : contratos) {
                notificarEquipe(contrato, dias);
            }
        }
    }

    private void notificarEquipe(Contrato contrato, int diasRestantes) {
        if (contrato.getEquipe().isEmpty()) {
            log.warn("Contrato {}/{} vence em {} dias mas não tem equipe vinculada",
                    contrato.getNumero(), contrato.getAno(), diasRestantes);
            return;
        }

        for (EquipeContrato equipe : contrato.getEquipe()) {
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
}