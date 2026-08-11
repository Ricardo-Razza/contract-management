package com.contract_management.api.service;

import com.contract_management.api.dto.request.AtaRequestDTO;
import com.contract_management.api.dto.response.AtaResponseDTO;
import com.contract_management.api.dto.response.EquipeContratoResponseDTO;
import com.contract_management.api.dto.response.SecretariaResponseDTO;
import com.contract_management.api.exception.BusinessException;
import com.contract_management.api.exception.EntityNotFoundException;
import com.contract_management.api.model.AtaRegistroPreco;
import com.contract_management.api.model.AtaSecretaria;
import com.contract_management.api.model.Ativo;
import com.contract_management.api.model.EquipeContrato;
import com.contract_management.api.model.Secretaria;
import com.contract_management.api.model.Tipo;
import com.contract_management.api.repository.AtaRepository;
import com.contract_management.api.repository.AtaSecretariaRepository;
import com.contract_management.api.repository.AtivoRepository;
import com.contract_management.api.repository.SecretariaRepository;
import com.contract_management.api.repository.TipoRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class AtaService {

    private final AtaRepository ataRepository;
    private final AtaSecretariaRepository ataSecretariaRepository;
    private final TipoRepository tipoRepository;
    private final AtivoRepository ativoRepository;
    private final SecretariaRepository secretariaRepository;

    @Transactional(readOnly = true)
    public List<AtaResponseDTO> listarTodos() {
        return ataRepository.findAll().stream()
                .map(this::toResponseDTO)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public AtaResponseDTO buscarPorId(Long id) {
        AtaRegistroPreco ata = ataRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("ATA", id));
        return toResponseDTO(ata);
    }

    @Transactional
    public AtaResponseDTO criar(AtaRequestDTO dto) {
        // valida duplicidade
        if (ataRepository.findByNumeroAndAno(dto.getNumero(), dto.getAno()).isPresent()) {
            throw new BusinessException("ATA " + dto.getNumero() + "/" + dto.getAno() + " já existe");
        }

        // valida datas
        if (dto.getDataFim() != null && dto.getDataFim().isBefore(dto.getDataInicio())) {
            throw new BusinessException("Data fim não pode ser anterior à data início");
        }

        // busca dependencias
        Tipo tipo = tipoRepository.findById(dto.getTipoId())
                .orElseThrow(() -> new EntityNotFoundException("Tipo", dto.getTipoId()));

        Ativo ativo = ativoRepository.findById(dto.getAtivoId())
                .orElseThrow(() -> new EntityNotFoundException("Ativo", dto.getAtivoId()));

        // constroi a entidade
        AtaRegistroPreco ata = AtaRegistroPreco.builder()
                .numero(dto.getNumero())
                .ano(dto.getAno())
                .dataInicio(dto.getDataInicio())
                .dataFim(dto.getDataFim())
                .tipo(tipo)
                .objeto(dto.getObjeto())
                .observacao(dto.getObservacao())
                .portariaDesignacao(dto.getPortariaDesignacao())
                .dataDesignacao(dto.getDataDesignacao())
                .ativo(ativo)
                .build();

        AtaRegistroPreco saved = ataRepository.save(ata);

        // vincula secretarias
        if (dto.getSecretariasIds() != null && !dto.getSecretariasIds().isEmpty()) {
            for (Long secretariaId : dto.getSecretariasIds()) {
                Secretaria secretaria = secretariaRepository.findById(secretariaId)
                        .orElseThrow(() -> new EntityNotFoundException("Secretaria", secretariaId));

                AtaSecretaria ataSecretaria = AtaSecretaria.builder()
                        .ata(saved)
                        .secretaria(secretaria)
                        .ativo(ativo)
                        .build();

                ataSecretariaRepository.save(ataSecretaria);
            }
        }

        log.info("ATA criada com sucesso. ID: {}, Número: {}/{}", saved.getId(), saved.getNumero(), saved.getAno());
        return toResponseDTO(saved);
    }

    @Transactional
    public AtaResponseDTO atualizar(Long id, AtaRequestDTO dto) {
        // 1. Buscar a ata existente
        AtaRegistroPreco ata = ataRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("ATA", id));

        // 2. Validar duplicidade
        if (!ata.getNumero().equals(dto.getNumero()) || !ata.getAno().equals(dto.getAno())) {
            if (ataRepository.findByNumeroAndAno(dto.getNumero(), dto.getAno()).isPresent()) {
                throw new BusinessException("ATA " + dto.getNumero() + "/" + dto.getAno() + " já existe");
            }
        }

        // 3. Validar datas
        if (dto.getDataFim() != null && dto.getDataFim().isBefore(dto.getDataInicio())) {
            throw new BusinessException("Data fim não pode ser anterior à data início");
        }

        // 4. Buscar dependências
        Tipo tipo = tipoRepository.findById(dto.getTipoId())
                .orElseThrow(() -> new EntityNotFoundException("Tipo", dto.getTipoId()));

        Ativo ativo = ativoRepository.findById(dto.getAtivoId())
                .orElseThrow(() -> new EntityNotFoundException("Ativo", dto.getAtivoId()));

        // 5. Atualizar dados
        ata.setNumero(dto.getNumero());
        ata.setAno(dto.getAno());
        ata.setDataInicio(dto.getDataInicio());
        ata.setDataFim(dto.getDataFim());
        ata.setTipo(tipo);
        ata.setObjeto(dto.getObjeto());
        ata.setObservacao(dto.getObservacao());
        ata.setPortariaDesignacao(dto.getPortariaDesignacao());
        ata.setDataDesignacao(dto.getDataDesignacao());
        ata.setAtivo(ativo);

        // 6. ATUALIZAR SECRETARIAS - REMOVER ANTIGAS
        List<AtaSecretaria> antigas = ataSecretariaRepository.findByAtaId(id);
        if (!antigas.isEmpty()) {
            ataSecretariaRepository.deleteAll(antigas);
            ataSecretariaRepository.flush();  // Força a execução imediata
        }

        // 7. ADICIONAR NOVAS SECRETARIAS
        if (dto.getSecretariasIds() != null && !dto.getSecretariasIds().isEmpty()) {
            for (Long secretariaId : dto.getSecretariasIds()) {
                Secretaria secretaria = secretariaRepository.findById(secretariaId)
                        .orElseThrow(() -> new EntityNotFoundException("Secretaria", secretariaId));

                AtaSecretaria ataSecretaria = AtaSecretaria.builder()
                        .ata(ata)
                        .secretaria(secretaria)
                        .ativo(ativo)
                        .build();

                ataSecretariaRepository.save(ataSecretaria);
            }
        }

        log.info("ATA atualizada com sucesso. ID: {}, Número: {}/{}", ata.getId(), ata.getNumero(), ata.getAno());
        return toResponseDTO(ata);
    }
    @Transactional
    public void deletar(Long id) {
        if (!ataRepository.existsById(id)) {
            throw new EntityNotFoundException("ATA", id);
        }
        ataSecretariaRepository.deleteByAtaId(id);
        ataRepository.deleteById(id);
        log.info("ATA deletada com sucesso. ID: {}", id);
    }

    // converte entidade para response
    private AtaResponseDTO toResponseDTO(AtaRegistroPreco ata) {
        AtaResponseDTO dto = new AtaResponseDTO();

        // dados basicos
        dto.setId(ata.getId());
        dto.setNumero(ata.getNumero());
        dto.setAno(ata.getAno());
        dto.setDataInicio(ata.getDataInicio());
        dto.setDataFim(ata.getDataFim());
        dto.setTipo(ata.getTipo().getTipoArp());
        dto.setObjeto(ata.getObjeto());
        dto.setObservacao(ata.getObservacao());
        dto.setSituacao(ata.getAtivo().getSituacao());
        dto.setPortariaDesignacao(ata.getPortariaDesignacao());
        dto.setDataDesignacao(ata.getDataDesignacao());

        // relacionamentos
        dto.setSecretarias(mapSecretarias(ata.getSecretarias()));
        dto.setEquipe(extractEquipe(ata));

        return dto;
    }

    // mapeia secretarias
    private List<SecretariaResponseDTO> mapSecretarias(List<AtaSecretaria> secretarias) {
        if (secretarias == null || secretarias.isEmpty()) {
            return new ArrayList<>();
        }
        return secretarias.stream()
                .map(this::toSecretariaResponseDTO)
                .collect(Collectors.toList());
    }

    private SecretariaResponseDTO toSecretariaResponseDTO(AtaSecretaria as) {
        SecretariaResponseDTO dto = new SecretariaResponseDTO();
        dto.setId(as.getSecretaria().getId());
        dto.setNome(as.getSecretaria().getNome());
        dto.setSigla(as.getSecretaria().getSigla());
        dto.setSituacao(as.getAtivo().getSituacao());
        return dto;
    }

    // extrai equipe do contrato
    private List<EquipeContratoResponseDTO> extractEquipe(AtaRegistroPreco ata) {
        if (ata.getEquipe() == null || ata.getEquipe().isEmpty()) {
            return new ArrayList<>();
        }
        return ata.getEquipe().stream()
                .map(this::toEquipeResponseDTO)
                .filter(Objects::nonNull)
                .collect(Collectors.toList());
    }

    private EquipeContratoResponseDTO toEquipeResponseDTO(EquipeContrato membro) {
        if (membro.getFuncao() == null || membro.getServidor() == null) {
            return null;
        }
        EquipeContratoResponseDTO dto = new EquipeContratoResponseDTO();
        dto.setFuncao(membro.getFuncao().getNome());
        dto.setServidor(membro.getServidor().getNome());
        return dto;
    }

}