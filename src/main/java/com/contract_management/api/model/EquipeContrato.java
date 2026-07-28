package com.contract_management.api.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "equipe_contrato")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EquipeContrato {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ata_id", nullable = false)
    private AtaRegistroPreco ata;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "servidor_id", nullable = false)
    private Servidor servidor;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "funcao_id", nullable = false)
    private FuncaoEquipe funcao;

    @Column(name = "data_designacao", nullable = false)
    private LocalDate dataDesignacao;

    @Column(name = "data_fim")
    private LocalDate dataFim;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ativo_id", nullable = false)
    private Ativo ativo;

    @CreationTimestamp
    @Column(name = "criado_em", updatable = false)
    private LocalDateTime criadoEm;

    @UpdateTimestamp
    @Column(name = "atualizado_em")
    private LocalDateTime atualizadoEm;
}