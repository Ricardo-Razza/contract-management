package com.contract_management.api.repository;

import com.contract_management.api.model.Contrato;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Repository
public interface ContratoRepository extends JpaRepository<Contrato, Long> {
    Optional<Contrato> findByNumeroAndAno(Integer numero, Integer ano);
    List<Contrato> findByAtivoId(Long ativoId);
    List<Contrato> findByDataFimBefore(LocalDate data);
}
