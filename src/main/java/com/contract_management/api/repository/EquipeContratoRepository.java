package com.contract_management.api.repository;

import com.contract_management.api.model.EquipeContrato;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EquipeContratoRepository extends JpaRepository<EquipeContrato, Long> {
    List<EquipeContrato> findByContratoId(Long contratoId);
    List<EquipeContrato> findByAtaId(Long ataId);
}
