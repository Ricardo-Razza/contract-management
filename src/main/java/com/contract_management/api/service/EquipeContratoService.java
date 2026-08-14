package com.contract_management.api.service;

import com.contract_management.api.dto.request.EquipeContratoRequestDTO;
import com.contract_management.api.dto.request.MembroEquipeRequestDTO;
import com.contract_management.api.dto.response.EquipeContratoResponseDTO;
import com.contract_management.api.dto.response.MembroEquipeResponseDTO;
import com.contract_management.api.model.*;
import com.contract_management.api.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class EquipeContratoService {

    @Autowired
    private EquipeContratoRepository equipeContratoRepository;

    @Autowired
    private AtaRepository ataRepository;

    @Autowired
    private AtivoRepository ativoRepository;

    @Autowired
    private ServidorRepository servidorRepository;

    @Autowired
    private FuncaoEquipeRepository funcaoEquipeRepository;

    @Transactional(readOnly = true)
    public List<EquipeContratoResponseDTO> buscarTodas() {
        List<EquipeContrato> equipes = equipeContratoRepository.findAll();
        return equipes.stream()
                .map(this::converterParaResponseDTO)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public EquipeContratoResponseDTO buscarPorId(Long id) {
        EquipeContrato equipe = equipeContratoRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Equipe não encontrada com o ID: " + id));
        return converterParaResponseDTO(equipe);
    }

    @Transactional
    public EquipeContratoResponseDTO salvar(EquipeContratoRequestDTO dto) {
        AtaRegistroPreco ata = ataRepository.findById(dto.getAtaId())
                .orElseThrow(() -> new RuntimeException("Ata não encontrada com o ID: " + dto.getAtaId()));

        Ativo ativo = ativoRepository.findById(dto.getAtivoId())
                .orElseThrow(() -> new RuntimeException("Ativo não encontrado com o ID: " + dto.getAtivoId()));

        EquipeContrato equipe = EquipeContrato.builder()
                .ata(ata)
                .ativo(ativo)
                .membros(new ArrayList<>())
                .build();

        if (dto.getMembros() != null) {
            for (MembroEquipeRequestDTO membroDTO : dto.getMembros()) {
                Servidor servidor = servidorRepository.findById(membroDTO.getServidorId())
                        .orElseThrow(() -> new RuntimeException("Servidor não encontrado com o ID: " + membroDTO.getServidorId()));

                FuncaoEquipe funcao = funcaoEquipeRepository.findById(membroDTO.getFuncaoId())
                        .orElseThrow(() -> new RuntimeException("Função não encontrada com o ID: " + membroDTO.getFuncaoId()));

                EquipeMembro membro = EquipeMembro.builder()
                        .equipe(equipe)
                        .servidor(servidor)
                        .funcao(funcao)
                        .build();

                equipe.getMembros().add(membro);
            }
        }

        EquipeContrato equipeSalva = equipeContratoRepository.save(equipe);
        return converterParaResponseDTO(equipeSalva);
    }

    @Transactional
    public EquipeContratoResponseDTO atualizar(Long id, EquipeContratoRequestDTO dto) {
        EquipeContrato equipeExistente = equipeContratoRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Equipe não encontrada com o ID: " + id));

        AtaRegistroPreco ata = ataRepository.findById(dto.getAtaId())
                .orElseThrow(() -> new RuntimeException("Ata não encontrada com o ID: " + dto.getAtaId()));

        Ativo ativo = ativoRepository.findById(dto.getAtivoId())
                .orElseThrow(() -> new RuntimeException("Ativo não encontrado com o ID: " + dto.getAtivoId()));

        equipeExistente.setAta(ata);
        equipeExistente.setAtivo(ativo);

        equipeExistente.getMembros().clear();

        if (dto.getMembros() != null) {
            for (MembroEquipeRequestDTO membroDTO : dto.getMembros()) {
                Servidor servidor = servidorRepository.findById(membroDTO.getServidorId())
                        .orElseThrow(() -> new RuntimeException("Servidor não encontrado com o ID: " + membroDTO.getServidorId()));

                FuncaoEquipe funcao = funcaoEquipeRepository.findById(membroDTO.getFuncaoId())
                        .orElseThrow(() -> new RuntimeException("Função não encontrada com o ID: " + membroDTO.getFuncaoId()));

                EquipeMembro membro = EquipeMembro.builder()
                        .equipe(equipeExistente)
                        .servidor(servidor)
                        .funcao(funcao)
                        .build();

                equipeExistente.getMembros().add(membro);
            }
        }

        EquipeContrato equipeAtualizada = equipeContratoRepository.save(equipeExistente);
        return converterParaResponseDTO(equipeAtualizada);
    }

    @Transactional
    public void deletar(Long id) {
        if (!equipeContratoRepository.existsById(id)) {
            throw new RuntimeException("Equipe não encontrada com o ID: " + id);
        }
        equipeContratoRepository.deleteById(id);
    }

    // --- MÉTODOS PRIVADOS DE MAPEAMENTO (EXCLUSIVOS DO SERVICE) ---

    private EquipeContratoResponseDTO converterParaResponseDTO(EquipeContrato equipe) {
        if (equipe == null) return null;

        List<MembroEquipeResponseDTO> membrosDTO = new ArrayList<>();
        if (equipe.getMembros() != null) {
            membrosDTO = equipe.getMembros().stream()
                    .map(this::converterMembroParaResponseDTO)
                    .collect(Collectors.toList());
        }

        String situacaoNome = null;
        if (equipe.getAtivo() != null) {
            // Se o atributo da sua entidade Ativo for 'situacao', 'descricao' ou 'nome', ajuste o getter abaixo:
            situacaoNome = equipe.getAtivo().getSituacao();
        }

        return EquipeContratoResponseDTO.builder()
                .id(equipe.getId())
                .ataId(equipe.getAta() != null ? equipe.getAta().getId() : null)
                .ataNumero(equipe.getAta() != null ? equipe.getAta().getNumero() : null)
                .ataAno(equipe.getAta() != null ? equipe.getAta().getAno() : null)
                .ataObjeto(equipe.getAta() != null ? equipe.getAta().getObjeto() : null)
                .ativoId(equipe.getAtivo() != null ? equipe.getAtivo().getId() : null)
                .situacao(situacaoNome)
                .membros(membrosDTO)
                .build();
    }

    private MembroEquipeResponseDTO converterMembroParaResponseDTO(EquipeMembro membro) {
        if (membro == null) return null;

        Servidor servidor = membro.getServidor();
        FuncaoEquipe funcao = membro.getFuncao();

        String matriculaStr = null;
        if (servidor != null && servidor.getMatricula() != null) {
            matriculaStr = String.valueOf(servidor.getMatricula()); // Converte Integer para String
        }

        String funcaoNome = null;
        if (funcao != null) {
            funcaoNome = funcao.getNome(); // ou getDescricao() dependendo do atributo em FuncaoEquipe
        }

        return MembroEquipeResponseDTO.builder()
                .id(membro.getId())
                .servidorId(servidor != null ? servidor.getId() : null)
                .servidorNome(servidor != null ? servidor.getNome() : null)
                .servidorCargo(servidor != null ? servidor.getCargo() : null)
                .servidorMatricula(matriculaStr)
                .funcaoId(funcao != null ? funcao.getId() : null)
                .funcaoNome(funcaoNome)
                .build();
    }

}
