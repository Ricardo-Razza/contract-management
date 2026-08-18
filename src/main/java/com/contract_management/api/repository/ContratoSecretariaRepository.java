package com.contract_management.api.repository;

import com.contract_management.api.model.ContratoSecretaria;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ContratoSecretariaRepository extends JpaRepository<ContratoSecretaria, Long> {
    List<ContratoSecretaria> findByContratoId(Long contratoId);
    List<ContratoSecretaria> findBySecretariaId(Long secretariaId);
    boolean existsByContratoIdAndSecretariaId(Long contratoId, Long secretariaId);
    void deleteByContratoId(Long contratoId);
}
