package com.contract_management.api.service;

import com.contract_management.api.dto.request.ArpImportRequestDTO;
import com.contract_management.api.dto.request.GestorFiscalDTO;
import com.contract_management.api.exception.EntityNotFoundException;
import com.contract_management.api.model.*;
import com.contract_management.api.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
@RequiredArgsConstructor
@Transactional
public class ArpImportPersistenceService {

    private final AtaRepository ataRepository;
    private final TipoRepository tipoRepository;
    private final AtivoRepository ativoRepository;
    private final ServidorRepository servidorRepository;
    private final SecretariaRepository secretariaRepository;
    private final AtaSecretariaRepository ataSecretariaRepository;
    private final EquipeContratoRepository equipeContratoRepository;
    private final FuncaoEquipeRepository funcaoEquipeRepository;

    public AtaRegistroPreco salvarARP(ArpImportRequestDTO arpDTO) {
        // Buscar ou criar o tipo
        Tipo tipo = buscarOuCriarTipo(arpDTO.getTipo());

        // Buscar ou criar o ativo com a situação
        Ativo ativo = buscarOuCriarAtivo(arpDTO.getSituacao());

        // Atualizar a ata existente ou criar uma nova. Reenviar a planilha não
        // cria outra ata para o mesmo número e ano.
        AtaRegistroPreco arp = ataRepository.findByNumeroAndAno(arpDTO.getNumero(), arpDTO.getAno())
                .orElseGet(AtaRegistroPreco::new);
        arp.setNumero(arpDTO.getNumero());
        arp.setAno(arpDTO.getAno());
        arp.setDataInicio(arpDTO.getDataInicio());
        arp.setDataFim(arpDTO.getDataFim());
        arp.setTipo(tipo);
        arp.setObjeto(arpDTO.getObjeto());
        arp.setAtivo(ativo);
        arp.setPortariaDesignacao(arpDTO.getPortariaDesignacao());
        arp.setDataDesignacao(arpDTO.getDataDesignacao());
        arp.setObservacao(arpDTO.getObservacao());

        arp = ataRepository.save(arp);

        // A planilha é a fonte de verdade para vínculos e equipe dessa ata.
        equipeContratoRepository.deleteByAtaId(arp.getId());
        ataSecretariaRepository.deleteByAtaId(arp.getId());

        vincularSecretariaDaAta(arp, arpDTO.getSecretaria(), ativo);

        // Adicionar gestores e fiscais como equipe do contrato
        if (arpDTO.getGestores() != null && !arpDTO.getGestores().isEmpty()) {
            for (GestorFiscalDTO gestor : arpDTO.getGestores()) {
                adicionarMembroEquipe(arp, gestor, "GESTOR");
            }
        }

        if (arpDTO.getFiscais() != null && !arpDTO.getFiscais().isEmpty()) {
            for (GestorFiscalDTO fiscal : arpDTO.getFiscais()) {
                adicionarMembroEquipe(arp, fiscal, "FISCAL");
            }
        }

        return arp;
    }

    public List<AtaRegistroPreco> salvarMultipleARPs(List<ArpImportRequestDTO> arpList) {
        List<AtaRegistroPreco> resultado = new ArrayList<>();
        for (ArpImportRequestDTO arp : arpList) {
            resultado.add(salvarARP(arp));
        }
        return resultado;
    }

    private Tipo buscarOuCriarTipo(String descricao) {
        String tipoDescricao = descricao != null ? descricao.trim() : "ADM";
        
        Optional<Tipo> tipo = tipoRepository.findAll().stream()
                .filter(t -> t.getTipoArp().equalsIgnoreCase(tipoDescricao))
                .findFirst();

        if (tipo.isPresent()) {
            return tipo.get();
        }

        Tipo novoTipo = Tipo.builder()
                .tipoArp(tipoDescricao)
                .build();

        return tipoRepository.save(novoTipo);
    }

    private Ativo buscarOuCriarAtivo(String situacao) {
        String situacaoNorm = situacao != null ? situacao.trim() : "Ativa";
        
        Optional<Ativo> ativo = ativoRepository.findBySituacao(situacaoNorm);
        if (ativo.isPresent()) {
            return ativo.get();
        }

        Ativo novoAtivo = Ativo.builder()
                .situacao(situacaoNorm)
                .build();

        return ativoRepository.save(novoAtivo);
    }

    private void adicionarMembroEquipe(AtaRegistroPreco arp, GestorFiscalDTO membro, String tipoFuncao) {
            // Buscar ou criar servidor
            Servidor servidor = buscarOuCriarServidor(membro);

            // Buscar ou criar função
            FuncaoEquipe funcao = buscarOuCriarFuncao(tipoFuncao);

            // Buscar ativo para equipe
            Ativo ativoEquipe = buscarOuCriarAtivo("Ativa");

            // Criar equipe do contrato
            EquipeContrato equipe = EquipeContrato.builder()
                    .ata(arp)
                    .servidor(servidor)
                    .funcao(funcao)
                    .ativo(ativoEquipe)
                    .build();

            equipeContratoRepository.save(equipe);
        vincularSecretariaDaAta(arp, membro.getSecretaria(), ativoEquipe);
    }

    private Servidor buscarOuCriarServidor(GestorFiscalDTO membro) {
        // Procurar servidor existente com mesmo nome
        List<Servidor> servidoresEncontrados = servidorRepository.findAllByNomeIgnoreCase(membro.getNome());
        if (servidoresEncontrados.size() == 1) {
            return servidoresEncontrados.getFirst();
        }
        if (servidoresEncontrados.size() > 1) {
            throw new IllegalStateException("Mais de um servidor encontrado para o nome: " + membro.getNome());
        }

        // Buscar ou criar secretaria
        Secretaria secretaria = buscarOuCriarSecretaria(membro.getSecretaria());

        // Buscar ativo
        Ativo ativoAtivo = buscarOuCriarAtivo("Ativa");

        // Criar novo servidor com dados mínimos
        Servidor novoServidor = Servidor.builder()
                .nome(membro.getNome())
                .cargo("Servidor")
                .matricula(0) // Valor padrão, será atualizado depois
                .email("nao.informado@example.com")
                .telefone("N/A")
                .ativo(ativoAtivo)
                .build();

        return servidorRepository.save(novoServidor);
    }

    private void vincularSecretariaDaAta(AtaRegistroPreco arp, String sigla, Ativo ativo) {
        Secretaria secretaria = buscarOuCriarSecretaria(sigla);
        if (!ataSecretariaRepository.existsByAtaIdAndSecretariaId(arp.getId(), secretaria.getId())) {
            ataSecretariaRepository.save(AtaSecretaria.builder()
                    .ata(arp)
                    .secretaria(secretaria)
                    .ativo(ativo)
                    .build());
        }
    }

    private Secretaria buscarOuCriarSecretaria(String nome) {
        if (nome == null || nome.trim().isEmpty()) {
            nome = "ADM";
        }

        nome = nome.trim().toUpperCase();

        Optional<Secretaria> secretariaExistente = secretariaRepository.findBySigla(nome);
        if (secretariaExistente.isPresent()) {
            return secretariaExistente.get();
        }

        // Criar nova secretaria
        Ativo ativoSecretaria = buscarOuCriarAtivo("Ativa");
        
        Secretaria novaSecretaria = Secretaria.builder()
                .nome(nome)
                .sigla(nome)
                .ativo(ativoSecretaria)
                .build();

        return secretariaRepository.save(novaSecretaria);
    }

    private FuncaoEquipe buscarOuCriarFuncao(String descricao) {
        String nomeFuncao = descricao != null ? descricao.trim().toUpperCase() : "GESTOR";
        
        Optional<FuncaoEquipe> funcao = funcaoEquipeRepository.findByNome(nomeFuncao);
        if (funcao.isPresent()) {
            return funcao.get();
        }

        Ativo ativoFuncao = buscarOuCriarAtivo("Ativa");
        
        FuncaoEquipe novaFuncao = FuncaoEquipe.builder()
                .nome(nomeFuncao)
                .ativo(ativoFuncao)
                .build();

        return funcaoEquipeRepository.save(novaFuncao);
    }
}
