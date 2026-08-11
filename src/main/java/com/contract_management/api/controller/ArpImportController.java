package com.contract_management.api.controller;

import com.contract_management.api.dto.request.ArpImportRequestDTO;
import com.contract_management.api.model.AtaRegistroPreco;
import com.contract_management.api.service.ArpOdsImportService;
import com.contract_management.api.service.ArpImportPersistenceService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/arp/importar")
@RequiredArgsConstructor
@Tag(name = "Importação de ARP", description = "Endpoints para importação de dados de Registro de Preço")
public class ArpImportController {

    private final ArpOdsImportService odsImportService;
    private final ArpImportPersistenceService persistenceService;

    @PostMapping(value = "/ods", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @Operation(summary = "Importar ARP de arquivo ODS", description = "Importa dados de Registro de Preço a partir de um arquivo ODS")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Importação realizada com sucesso",
                    content = @Content(mediaType = "application/json")),
            @ApiResponse(responseCode = "400", description = "Arquivo inválido ou formato incorreto"),
            @ApiResponse(responseCode = "500", description = "Erro ao processar o arquivo")
    })
    public ResponseEntity<?> importarOds(
            @RequestPart("arquivo") MultipartFile arquivo) {

        try {
            if (arquivo.isEmpty()) {
                return ResponseEntity.badRequest().body(Map.of(
                        "erro", "Arquivo vazio",
                        "mensagem", "Por favor, envie um arquivo ODS válido"
                ));
            }

            // Validar tipo de arquivo
            String nomeArquivo = arquivo.getOriginalFilename();
            if (nomeArquivo == null || (!nomeArquivo.endsWith(".ods") && !nomeArquivo.endsWith(".xlsx"))) {
                return ResponseEntity.badRequest().body(Map.of(
                        "erro", "Tipo de arquivo inválido",
                        "mensagem", "Por favor, envie um arquivo com extensão .ods ou .xlsx"
                ));
            }

            // Parsear arquivo
            List<ArpImportRequestDTO> arpsList = odsImportService.importFromOds(arquivo);

            if (arpsList.isEmpty()) {
                return ResponseEntity.badRequest().body(Map.of(
                        "erro", "Nenhum dado encontrado",
                        "mensagem", "O arquivo não contém dados válidos para importar"
                ));
            }

            // Salvar no banco de dados
            List<AtaRegistroPreco> arpssSalvos = persistenceService.salvarMultipleARPs(arpsList);

            Map<String, Object> resposta = new HashMap<>();
            resposta.put("sucesso", true);
            resposta.put("mensagem", "Importação realizada com sucesso");
            resposta.put("registrosProcessados", arpsList.size());
            resposta.put("registrosSalvos", arpssSalvos.size());
            resposta.put("detalhes", arpssSalvos.stream()
                    .map(arp -> Map.of(
                            "id", arp.getId(),
                            "numero", arp.getNumero(),
                            "ano", arp.getAno(),
                            "tipo", arp.getTipo().getTipoArp(),
                            "situacao", arp.getAtivo().getSituacao()
                    ))
                    .toList());

            return ResponseEntity.status(HttpStatus.CREATED).body(resposta);

        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(Map.of(
                    "erro", "Erro ao ler arquivo",
                    "mensagem", e.getMessage()
            ));
        } catch (IllegalArgumentException e) {
            return ResponseEntity.badRequest().body(Map.of(
                    "erro", "Erro no formato do arquivo",
                    "mensagem", e.getMessage()
            ));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(Map.of(
                    "erro", "Erro ao processar importação",
                    "mensagem", e.getMessage()
            ));
        }
    }

    @PostMapping(value = "/preview", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @Operation(summary = "Preview dos dados a serem importados", description = "Lê o arquivo e retorna um preview dos dados sem salvar no banco")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Preview realizado com sucesso"),
            @ApiResponse(responseCode = "400", description = "Arquivo inválido"),
            @ApiResponse(responseCode = "500", description = "Erro ao processar o arquivo")
    })
    public ResponseEntity<?> previewOds(
            @RequestPart("arquivo") MultipartFile arquivo) {

        try {
            if (arquivo.isEmpty()) {
                return ResponseEntity.badRequest().body(Map.of(
                        "erro", "Arquivo vazio"
                ));
            }

            List<ArpImportRequestDTO> arpsList = odsImportService.importFromOds(arquivo);

            if (arpsList.isEmpty()) {
                return ResponseEntity.badRequest().body(Map.of(
                        "erro", "Nenhum dado encontrado no arquivo"
                ));
            }

            Map<String, Object> resposta = new HashMap<>();
            resposta.put("total", arpsList.size());
            resposta.put("dados", arpsList.stream()
                    .map(arp -> {
                        Map<String, Object> item = new HashMap<>();
                        item.put("numero", arp.getNumero());
                        item.put("ano", arp.getAno());
                        item.put("dataInicio", arp.getDataInicio());
                        item.put("dataFim", arp.getDataFim());
                        item.put("situacao", arp.getSituacao());
                        item.put("tipo", arp.getTipo());
                        item.put("objeto", arp.getObjeto() != null ? arp.getObjeto().substring(0, Math.min(100, arp.getObjeto().length())) + "..." : "");
                        item.put("portaria", arp.getPortariaDesignacao());
                        item.put("dataDesignacao", arp.getDataDesignacao());
                        item.put("gestores", arp.getGestores() != null ? arp.getGestores().size() : 0);
                        item.put("fiscais", arp.getFiscais() != null ? arp.getFiscais().size() : 0);
                        return item;
                    })
                    .toList());

            return ResponseEntity.ok(resposta);

        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(Map.of(
                    "erro", "Erro ao ler arquivo: " + e.getMessage()
            ));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(Map.of(
                    "erro", "Erro ao processar arquivo: " + e.getMessage()
            ));
        }
    }
}
