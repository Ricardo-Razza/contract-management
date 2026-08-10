package com.contract_management.api.dto.request;

import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.time.LocalDate;

@Data
public class EquipeContratoRequestDTO {

    @NotNull(message = "ATA é obrigatória")
    private Long ataId;

    @NotNull(message = "Servidor é obrigatório")
    private Long servidorId;

    @NotNull(message = "Função é obrigatória")
    private Long funcaoId;

    @NotNull(message = "Status é obrigatório")
    private Long ativoId;
}