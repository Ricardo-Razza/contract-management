package com.contract_management.api.service;

import com.contract_management.api.dto.request.AtaRequestDTO;
import com.contract_management.api.dto.response.AtaResponseDTO;
import com.contract_management.api.dto.response.SecretariaResponseDTO;
import com.contract_management.api.exception.BusinessException;
import com.contract_management.api.exception.EntityNotFoundException;
import com.contract_management.api.model.AtaRegistroPreco;
import com.contract_management.api.model.AtaSecretaria;
import com.contract_management.api.model.Ativo;
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

import java.util.ArrayList;
import java.util.List;
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
        if (ataRepository.findByNumeroAndAno(dto.getNumero(), dto.getAno()).isPresent()) {
            throw new BusinessException("ATA " + dto.getNumero() + "/" + dto.getAno() + " já existe");
        }

        if (dto.getDataFim() != null && dto.getDataFim().isBefore(dto.getDataInicio())) {
            throw new BusinessException("Data fim não pode ser anterior à data início");
        }

        Tipo tipo = tipoRepository.findById(dto.getTipoId())
                .orElseThrow(() -> new EntityNotFoundException("Tipo", dto.getTipoId()));

        Ativo ativo = ativoRepository.findById(dto.getAtivoId())
                .orElseThrow(() -> new EntityNotFoundException("Ativo", dto.getAtivoId()));

        AtaRegistroPreco ata = AtaRegistroPreco.builder()
                .numero(dto.getNumero())
                .ano(dto.getAno())
                .dataInicio(dto.getDataInicio())
                .dataFim(dto.getDataFim())
                .tipo(tipo)
                .objeto(dto.getObjeto())
                .ativo(ativo)
                .build();

        AtaRegistroPreco saved = ataRepository.save(ata);

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

        return toResponseDTO(saved);
    }

    @Transactional
    public void deletar(Long id) {
        if (!ataRepository.existsById(id)) {
            throw new EntityNotFoundException("ATA", id);
        }
        ataSecretariaRepository.deleteByAtaId(id);
        ataRepository.deleteById(id);
    }

    private AtaResponseDTO toResponseDTO(AtaRegistroPreco ata) {
        AtaResponseDTO dto = new AtaResponseDTO();
        dto.setId(ata.getId());
        dto.setNumero(ata.getNumero());
        dto.setAno(ata.getAno());
        dto.setDataInicio(ata.getDataInicio());
        dto.setDataFim(ata.getDataFim());
        dto.setTipo(ata.getTipo().getTipoArp());
        dto.setObjeto(ata.getObjeto());
        dto.setSituacao(ata.getAtivo().getSituacao());

        List<SecretariaResponseDTO> secretarias = new ArrayList<>();
        for (AtaSecretaria as : ata.getSecretarias()) {
            SecretariaResponseDTO sDTO = new SecretariaResponseDTO();
            sDTO.setId(as.getSecretaria().getId());
            sDTO.setNome(as.getSecretaria().getNome());
            sDTO.setSigla(as.getSecretaria().getSigla());
            sDTO.setSituacao(as.getAtivo().getSituacao());
            secretarias.add(sDTO);
        }
        dto.setSecretarias(secretarias);

        return dto;
    }
}