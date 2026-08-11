package com.contract_management.api.service;

import com.contract_management.api.dto.request.ArpImportRequestDTO;
import com.contract_management.api.dto.request.GestorFiscalDTO;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.odftoolkit.odfdom.doc.OdfSpreadsheetDocument;
import org.odftoolkit.odfdom.doc.table.OdfTable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class ArpOdsImportService {

    private static final DateTimeFormatter DATE_FORMATTER = DateTimeFormatter.ofPattern("d/M/uuuu");
    private static final Pattern NOME_PATTERN = Pattern.compile("(?:Gestor Local|Fiscal Local|Fiscal)\\s+(?:Titular|Suplente)?\\s+([A-Z]{2,})?:\\s*(.+?)(?=(?:Gestor|Fiscal)|$)", Pattern.CASE_INSENSITIVE);

    public List<ArpImportRequestDTO> importFromOds(MultipartFile file) throws IOException {
        String nomeArquivo = Optional.ofNullable(file.getOriginalFilename()).orElse("").toLowerCase(Locale.ROOT);
        if (nomeArquivo.endsWith(".ods")) {
            return importarArquivoOds(file);
        }

        try (Workbook workbook = WorkbookFactory.create(file.getInputStream())) {
            return importarPlanilha(workbook.getSheetAt(0));
        }
    }

    private List<ArpImportRequestDTO> importarArquivoOds(MultipartFile file) throws IOException {
        OdfSpreadsheetDocument documento = null;
        try (Workbook workbookTemporario = new XSSFWorkbook()) {
            documento = OdfSpreadsheetDocument.loadDocument(file.getInputStream());
            List<OdfTable> tabelas = documento.getSpreadsheetTables();
            if (tabelas.isEmpty()) {
                throw new IllegalArgumentException("O arquivo ODS não possui uma planilha");
            }

            OdfTable tabela = tabelas.getFirst();
            Sheet planilha = workbookTemporario.createSheet(tabela.getTableName());
            int totalLinhas = tabela.getRowCount();
            int totalColunas = Math.min(tabela.getColumnCount(), 12);

            for (int linha = 0; linha < totalLinhas; linha++) {
                Row linhaDestino = planilha.createRow(linha);
                for (int coluna = 0; coluna < totalColunas; coluna++) {
                    String valor = tabela.getCellByPosition(coluna, linha).getDisplayText();
                    if (valor != null && !valor.isBlank()) {
                        linhaDestino.createCell(coluna).setCellValue(valor);
                    }
                }
            }
            return importarPlanilha(planilha);
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception e) {
            throw new IOException("Não foi possível ler o arquivo ODS", e);
        } finally {
            if (documento != null) {
                documento.close();
            }
        }
    }

    private List<ArpImportRequestDTO> importarPlanilha(Sheet sheet) {
        List<ArpImportRequestDTO> arpList = new ArrayList<>();

            int headerRowIndex = findHeaderRow(sheet);
            if (headerRowIndex == -1) {
                throw new IllegalArgumentException("Cabeçalho da planilha não encontrado. Esperado: Nº, Ano, Data Início, Data Fim, Situação, Tipo, Objeto, etc.");
            }

            Row headerRow = sheet.getRow(headerRowIndex);
            Map<String, Integer> columnMap = mapColumns(headerRow);

            Map<String, ArpImportRequestDTO> atasPorNumeroEAno = new LinkedHashMap<>();
            int linhasVaziasConsecutivas = 0;
            for (int rowIndex = headerRowIndex + 1; rowIndex <= sheet.getLastRowNum(); rowIndex++) {
                Row row = sheet.getRow(rowIndex);
                if (row == null || isEmptyRow(row)) {
                    if (++linhasVaziasConsecutivas >= 100) {
                        break;
                    }
                    continue;
                }
                linhasVaziasConsecutivas = 0;

                try {
                    ArpImportRequestDTO arp = parseRow(row, columnMap);
                    if (arp != null) {
                        String chave = arp.getNumero() + "/" + arp.getAno();
                        ArpImportRequestDTO existente = atasPorNumeroEAno.putIfAbsent(chave, arp);
                        if (existente != null && !mesmaAta(existente, arp)) {
                            throw new IllegalArgumentException("A ata " + chave + " aparece mais de uma vez com dados diferentes");
                        }
                    }
                } catch (Exception e) {
                    throw new IllegalArgumentException("Erro ao processar a linha " + (rowIndex + 1) + ": " + e.getMessage(), e);
                }
            }
            arpList.addAll(atasPorNumeroEAno.values());

        return arpList;
    }

    private int findHeaderRow(Sheet sheet) {
        for (int rowIndex = 0; rowIndex <= Math.min(sheet.getLastRowNum(), 10); rowIndex++) {
            Row row = sheet.getRow(rowIndex);
            if (row != null) {
                Cell cell = row.getCell(0);
                if (cell != null) {
                    String value = getCellStringValue(cell).trim();
                    if ("Nº".equals(value) || "N°".equals(value)) {
                        return rowIndex;
                    }
                }
            }
        }
        return -1;
    }

    private Map<String, Integer> mapColumns(Row headerRow) {
        Map<String, Integer> columnMap = new HashMap<>();
        for (int col = 0; col < headerRow.getLastCellNum(); col++) {
            Cell cell = headerRow.getCell(col);
            if (cell != null) {
                String value = getCellStringValue(cell).trim().toLowerCase();
                String originalValue = getCellStringValue(cell).trim();
                
                if (value.matches("^n[º°]?$")) {
                    // Verifica se é coluna de portaria (próxima coluna após objeto)
                    if (originalValue.toLowerCase().contains("portaria") || col > 6) {
                        columnMap.put("portariaNumeracao", col);
                    } else {
                        columnMap.put("numero", col);
                    }
                } else if (value.equals("ano")) {
                    columnMap.put("ano", col);
                } else if (value.equals("data início")) {
                    columnMap.put("dataInicio", col);
                } else if (value.equals("data fim")) {
                    columnMap.put("dataFim", col);
                } else if (value.equals("situação")) {
                    columnMap.put("situacao", col);
                } else if (value.equals("secretaria")) {
                    columnMap.put("secretaria", col);
                } else if (value.equals("tipo")) {
                    columnMap.put("tipo", col);
                } else if (value.equals("objeto")) {
                    columnMap.put("objeto", col);
                } else if (value.startsWith("portaria")) {
                    columnMap.put("portariaNumeracao", col);
                    columnMap.put("dataDesignacao", col + 1);
                } else if (value.equals("data") && columnMap.containsKey("portariaNumeracao")) {
                    columnMap.put("dataDesignacao", col);
                } else if (value.equals("gestor")) {
                    columnMap.put("gestor", col);
                } else if (value.equals("fiscais") || value.equals("fiscal")) {
                    columnMap.put("fiscais", col);
                }
            }
        }
        return columnMap;
    }

    private ArpImportRequestDTO parseRow(Row row, Map<String, Integer> columnMap) {
        Integer numero = getIntegerValue(row, columnMap.get("numero"));
        if (numero == null) return null;

            Integer ano = getIntegerValue(row, columnMap.get("ano"));
            LocalDate dataInicio = getDateValue(row, columnMap.get("dataInicio"));
            LocalDate dataFim = getDateValue(row, columnMap.get("dataFim"));
            String situacao = getStringValue(row, columnMap.get("situacao"));
            String secretaria = getStringValue(row, columnMap.get("secretaria"));
            String tipo = getStringValue(row, columnMap.get("tipo"));
            String objeto = getStringValue(row, columnMap.get("objeto"));

            String portariaNumeracao = getStringValue(row, columnMap.get("portariaNumeracao"));
            LocalDate dataDesignacao = getDateValue(row, columnMap.get("dataDesignacao"));

            String gestoresText = getStringValue(row, columnMap.get("gestor"));
            String fiscaisText = getStringValue(row, columnMap.get("fiscais"));

        return ArpImportRequestDTO.builder()
                .numero(numero)
                .ano(ano)
                .dataInicio(dataInicio)
                .dataFim(dataFim)
                .situacao(situacao)
                .secretaria(secretaria)
                .tipo(tipo)
                .objeto(objeto)
                .portariaDesignacao(portariaNumeracao)
                .dataDesignacao(dataDesignacao)
                .gestores(parseGestoresEFiscais(gestoresText, secretaria))
                .fiscais(parseGestoresEFiscais(fiscaisText, secretaria))
                .build();
    }

    private List<GestorFiscalDTO> parseGestoresEFiscais(String texto, String secretariaPadrao) {
        List<GestorFiscalDTO> resultado = new ArrayList<>();

        if (texto == null || texto.trim().isEmpty()) {
            return resultado;
        }

        // Padrão: "Gestor/Fiscal Local [Titular/Suplente] [SIGLA]: Nome"
        // ou "Fiscal: Nome"
        Pattern pattern = Pattern.compile(
            "(Gestor|Fiscal)(?:\\s+Local)?(?:\\s+de\\s+Contrato(?:\\s+Provisório)?)?(?:\\s+(?:Titular|Suplente))?\\s*(?:([A-Z]{2,10})\\s*)?:\\s*",
            Pattern.CASE_INSENSITIVE
        );

        Matcher matcher = pattern.matcher(texto);
        
        while (matcher.find()) {
            String funcao = matcher.group(1).toUpperCase(Locale.ROOT);
            String secretaria = matcher.group(2);
            Matcher proximoMarcador = pattern.matcher(texto);
            int fimNome = proximoMarcador.find(matcher.end()) ? proximoMarcador.start() : texto.length();
            String nome = texto.substring(matcher.end(), fimNome).trim();

            if (nome != null && !nome.trim().isEmpty()) {
                nome = nome.trim();
                
                if (secretaria == null || secretaria.isEmpty()) {
                    secretaria = (secretariaPadrao == null || secretariaPadrao.isBlank())
                            ? "ADM"
                            : secretariaPadrao.trim().toUpperCase(Locale.ROOT);
                }

                resultado.add(GestorFiscalDTO.builder()
                        .nome(nome)
                        .secretaria(secretaria)
                        .funcao(funcao)
                        .build());
            }
        }

        return resultado;
    }

    private boolean isEmptyRow(Row row) {
        for (int col = 0; col < row.getLastCellNum(); col++) {
            Cell cell = row.getCell(col);
            if (cell != null && !getCellStringValue(cell).trim().isEmpty()) {
                return false;
            }
        }
        return true;
    }

    private boolean mesmaAta(ArpImportRequestDTO primeira, ArpImportRequestDTO segunda) {
        return Objects.equals(primeira.getDataInicio(), segunda.getDataInicio())
                && Objects.equals(primeira.getDataFim(), segunda.getDataFim())
                && Objects.equals(primeira.getSituacao(), segunda.getSituacao())
                && Objects.equals(primeira.getSecretaria(), segunda.getSecretaria())
                && Objects.equals(primeira.getTipo(), segunda.getTipo())
                && Objects.equals(primeira.getObjeto(), segunda.getObjeto())
                && Objects.equals(primeira.getPortariaDesignacao(), segunda.getPortariaDesignacao())
                && Objects.equals(primeira.getDataDesignacao(), segunda.getDataDesignacao())
                && Objects.equals(primeira.getGestores(), segunda.getGestores())
                && Objects.equals(primeira.getFiscais(), segunda.getFiscais());
    }

    private String getCellStringValue(Cell cell) {
        if (cell == null) return "";

        switch (cell.getCellType()) {
            case STRING -> {
                return cell.getStringCellValue();
            }
            case NUMERIC -> {
                if (DateUtil.isCellDateFormatted(cell)) {
                    return cell.getDateCellValue().toString();
                } else {
                    return String.valueOf((long) cell.getNumericCellValue());
                }
            }
            case BOOLEAN -> {
                return String.valueOf(cell.getBooleanCellValue());
            }
            default -> {
                return "";
            }
        }
    }

    private String getStringValue(Row row, Integer colIndex) {
        if (colIndex == null || colIndex < 0) return "";
        Cell cell = row.getCell(colIndex);
        return getCellStringValue(cell).trim();
    }

    private Integer getIntegerValue(Row row, Integer colIndex) {
        if (colIndex == null || colIndex < 0) return null;
        Cell cell = row.getCell(colIndex);
        if (cell == null) return null;

        try {
            if (cell.getCellType() == CellType.NUMERIC) {
                return (int) cell.getNumericCellValue();
            } else if (cell.getCellType() == CellType.STRING) {
                String value = cell.getStringCellValue().trim();
                return value.isEmpty() ? null : Integer.parseInt(value);
            }
        } catch (NumberFormatException e) {
            return null;
        }
        return null;
    }

    private LocalDate getDateValue(Row row, Integer colIndex) {
        if (colIndex == null || colIndex < 0) return null;
        Cell cell = row.getCell(colIndex);
        if (cell == null) return null;

        if (cell.getCellType() == CellType.NUMERIC && DateUtil.isCellDateFormatted(cell)) {
            return cell.getDateCellValue().toInstant().atZone(java.time.ZoneId.systemDefault()).toLocalDate();
        }
        if (cell.getCellType() == CellType.STRING) {
            String value = cell.getStringCellValue().trim();
            return value.isEmpty() ? null : LocalDate.parse(normalizarData(value), DATE_FORMATTER);
        }
        return null;
    }

    private String normalizarData(String valor) {
        String data = valor.trim().replace("º", "").replaceAll("\\s+", "");
        if (data.matches("\\d{1,2}/\\d{1,2}/\\d{4}")) {
            return data;
        }
        if (data.matches("\\d{1,2}/\\d{6}")) {
            int barra = data.indexOf('/');
            return data.substring(0, barra + 3) + "/" + data.substring(barra + 3);
        }
        if (data.matches("\\d{4}/\\d{4}")) {
            return data.substring(0, 2) + "/" + data.substring(2, 4) + "/" + data.substring(5);
        }
        throw new IllegalArgumentException("Formato de data não reconhecido: " + valor);
    }
}
