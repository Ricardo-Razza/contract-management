package com.contract_management.api.repository;

import com.contract_management.api.model.AtaRegistroPreco;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Repository
public interface AtaRepository extends JpaRepository<AtaRegistroPreco, Long> {
    Optional<AtaRegistroPreco> findByNumeroAndAno(Integer numero, Integer ano);
    List<AtaRegistroPreco> findByAtivoId(Long ativoId);
    List<AtaRegistroPreco> findByDataFimBefore(LocalDate data);
}