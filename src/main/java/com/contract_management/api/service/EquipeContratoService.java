package com.contract_management.api.service;

import com.contract_management.api.dto.request.EquipeContratoRequestDTO;
import com.contract_management.api.dto.response.EquipeContratoResponseDTO;
import com.contract_management.api.exception.BusinessException;
import com.contract_management.api.exception.EntityNotFoundException;
import com.contract_management.api.model.AtaRegistroPreco;
import com.contract_management.api.model.Ativo;
import com.contract_management.api.model.EquipeContrato;
import com.contract_management.api.model.FuncaoEquipe;
import com.contract_management.api.model.Servidor;
import com.contract_management.api.repository.AtaRepository;
import com.contract_management.api.repository.AtivoRepository;
import com.contract_management.api.repository.EquipeContratoRepository;
import com.contract_management.api.repository.FuncaoEquipeRepository;
import com.contract_management.api.repository.ServidorRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class EquipeContratoService {

    private final EquipeContratoRepository equipeContratoRepository;
    private final AtaRepository ataRepository;
    private final ServidorRepository servidorRepository;
    private final FuncaoEquipeRepository funcaoEquipeRepository;
    private final AtivoRepository ativoRepository;

    @Transactional(readOnly = true)
    public List<EquipeContratoResponseDTO> listarTodos() {
        return equipeContratoRepository.findAll().stream()
                .map(this::toResponseDTO)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public EquipeContratoResponseDTO buscarPorId(Long id) {
        EquipeContrato equipe = equipeContratoRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("EquipeContrato", id));
        return toResponseDTO(equipe);
    }

    @Transactional
    public EquipeContratoResponseDTO criar(EquipeContratoRequestDTO dto) {
        AtaRegistroPreco ata = ataRepository.findById(dto.getAtaId())
                .orElseThrow(() -> new EntityNotFoundException("ATA", dto.getAtaId()));

        Servidor servidor = servidorRepository.findById(dto.getServidorId())
                .orElseThrow(() -> new EntityNotFoundException("Servidor", dto.getServidorId()));

        FuncaoEquipe funcao = funcaoEquipeRepository.findById(dto.getFuncaoId())
                .orElseThrow(() -> new EntityNotFoundException("FuncaoEquipe", dto.getFuncaoId()));

        Ativo ativo = ativoRepository.findById(dto.getAtivoId())
                .orElseThrow(() -> new EntityNotFoundException("Ativo", dto.getAtivoId()));

        EquipeContrato equipe = EquipeContrato.builder()
                .ata(ata)
                .servidor(servidor)
                .funcao(funcao)
                .ativo(ativo)
                .build();

        EquipeContrato saved = equipeContratoRepository.save(equipe);
        return toResponseDTO(saved);
    }

    @Transactional
    public void deletar(Long id) {
        if (!equipeContratoRepository.existsById(id)) {
            throw new EntityNotFoundException("EquipeContrato", id);
        }
        equipeContratoRepository.deleteById(id);
    }

    private EquipeContratoResponseDTO toResponseDTO(EquipeContrato equipe) {
        EquipeContratoResponseDTO dto = new EquipeContratoResponseDTO();
        dto.setId(equipe.getId());

        // Forçar o carregamento dos dados antes de sair da transação
        // Isso evita o LazyInitializationException
        dto.setAta(equipe.getAta().getNumero() + "/" + equipe.getAta().getAno());
        dto.setServidor(equipe.getServidor().getNome());
        dto.setFuncao(equipe.getFuncao().getNome());
        dto.setSituacao(equipe.getAtivo().getSituacao());

        return dto;
    }
}