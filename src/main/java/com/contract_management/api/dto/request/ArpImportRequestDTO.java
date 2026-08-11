package com.contract_management.api.dto.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ArpImportRequestDTO {
    private Integer numero;
    private Integer ano;
    private LocalDate dataInicio;
    private LocalDate dataFim;
    private String situacao;
    private String secretaria;
    private String tipo;
    private String objeto;
    private String portariaDesignacao;
    private LocalDate dataDesignacao;
    private String observacao;
    private List<GestorFiscalDTO> gestores;
    private List<GestorFiscalDTO> fiscais;
}
