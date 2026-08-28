package com.contract_management.api.controller;

import com.contract_management.api.scheduler.ContratoVencimentoScheduler;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/teste")
@RequiredArgsConstructor
public class TesteSchedulerController {

    private final ContratoVencimentoScheduler scheduler;

    @PostMapping("/verificar-vencimentos")
    public String verificarAgora() {
        scheduler.verificarContratosVencendo();
        return "Verificação executada. Confira os logs.";
    }
}