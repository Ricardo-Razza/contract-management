package com.contract_management.api.dto.response;

import lombok.Data;
import java.time.LocalDate;

@Data
public class EquipeContratoResponseDTO {

    private Long id;
    private String ata;
    private String servidor;
    private String funcao;
    private String situacao;
}