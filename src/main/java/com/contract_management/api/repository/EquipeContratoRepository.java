package com.contract_management.api.repository;

import com.contract_management.api.model.EquipeContrato;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EquipeContratoRepository extends JpaRepository<EquipeContrato, Long> {
    List<EquipeContrato> findByContratoId(Long contratoId);
    List<EquipeContrato> findByAtaId(Long ataId);

    @Query("""
        SELECT DISTINCT eq FROM EquipeContrato eq
        LEFT JOIN FETCH eq.membros m
        LEFT JOIN FETCH m.servidor
        WHERE eq.contrato.id IN :contratoIds
        """)
    List<EquipeContrato> findByContratoIdInComMembros(@Param("contratoIds") List<Long> contratoIds);
}
