package com.contract_management.api.dto.request;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class ServidorRequestDTO {

    @NotBlank(message = "Nome é obrigatório")
    private String nome;

    @NotBlank(message = "Cargo é obrigatório")
    private String cargo;

    @NotNull(message = "Matrícula é obrigatória")
    private Integer matricula;

    @NotBlank(message = "Email é obrigatório")
    private String email;

    @NotNull(message = "CPF é obrigatório")
    private Long cpf;

    @NotBlank(message = "Telefone é obrigatório")
    private String telefone;

    @NotNull(message = "Secretaria é obrigatória")
    private Long secretariaId;

    @NotNull(message = "Status é obrigatório")
    private Long ativoId;
}