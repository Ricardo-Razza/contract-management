package com.contract_management.api.dto.response;

import lombok.Data;

@Data
public class ServidorResponseDTO {

    private Long id;
    private String nome;
    private String cargo;
    private Integer matricula;
    private String email;
    private String cpf;
    private String telefone;
    private String secretaria;
    private String situacao;
}