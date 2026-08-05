# ARP - Backend

Sistema de Administração de Atas de Registro de Preço (ARP) - API Backend.

## 📋 Sobre o Projeto

Este é o backend do sistema de administração de atas de registro de preço, desenvolvido em **Java com Spring Boot 4.1.0**. A API fornece endpoints RESTful para gerenciar secretarias, servidores, atas e equipes de contrato.

### Funcionalidades

- **Secretarias**: CRUD completo
- **Servidores**: CRUD completo
- **Atas**: Criação, listagem e exclusão
- **Equipes de Contrato**: Criação, listagem e exclusão
- **Controle de Status**: Ativo/Inativo via tabela `ativo`
- **Auditoria**: Campos de criação e atualização automáticos

### Tecnologias

- **Java**: 25
- **Framework**: Spring Boot 4.1.0
- **ORM**: Hibernate (JPA)
- **Banco de Dados**: MySQL 8
- **Build**: Maven
- **Documentação**: Swagger/OpenAPI (em breve)

---

## 🚀 Como Executar

### Pré-requisitos

- Java 25 (JDK 25)
- Maven 3.9+
- MySQL 8.0+
- Frontend rodando em `http://localhost:4200` (opcional)

### Instalação

```bash
# Clone o repositório
git clone https://github.com/seu-usuario/arp-backend.git
cd arp-backend

# Compilar o projeto
mvn clean compile

# Executar a aplicação
mvn spring-boot:run
```

### Configuração do Banco de Dados

1. Crie o banco de dados no MySQL:

```sql
CREATE DATABASE contract_management 
CHARACTER SET utf8mb4 
COLLATE utf8mb4_unicode_ci;
```

2. Configure as credenciais no `application.yml`:

```yaml
spring:
  datasource:
    url: jdbc:mysql://localhost:3306/contract_management?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=America/Sao_Paulo
    username: root
    password: sua_senha
```

### Dados Iniciais

Execute os scripts abaixo para popular as tabelas de domínio:

```sql
INSERT INTO ativo (id, situacao) VALUES (1, 'SIM'), (2, 'NAO');

INSERT INTO tipo (id, tipo_arp) VALUES (1, 'PRODUTO'), (2, 'SERVICO');

INSERT INTO funcao_equipe (id, nome, descricao, ativo_id) VALUES 
(1, 'GESTOR_TITULAR', 'Gestor Titular do Contrato', 1),
(2, 'GESTOR_SUPLENTE', 'Gestor Suplente do Contrato', 1),
(3, 'FISCAL', 'Fiscal do Contrato', 1);
```

---

## 📁 Estrutura do Projeto

```
src/main/java/com/contract_management/api/
├── config/                 # Configurações
│   └── WebConfig.java
├── controller/             # Controllers REST
│   ├── SecretariaController.java
│   ├── ServidorController.java
│   ├── AtaController.java
│   └── EquipeContratoController.java
├── dto/                    # Data Transfer Objects
│   ├── request/
│   └── response/
├── exception/              # Exceções e handlers
│   ├── BusinessException.java
│   ├── EntityNotFoundException.java
│   └── GlobalExceptionHandler.java
├── model/                  # Entidades JPA
│   ├── Ativo.java
│   ├── Tipo.java
│   ├── Secretaria.java
│   ├── Servidor.java
│   ├── FuncaoEquipe.java
│   ├── AtaRegistroPreco.java
│   ├── AtaSecretaria.java
│   └── EquipeContrato.java
├── repository/             # Repositories JPA
│   ├── AtivoRepository.java
│   ├── TipoRepository.java
│   ├── SecretariaRepository.java
│   └── ...
├── service/                # Services (regras de negócio)
│   ├── SecretariaService.java
│   ├── ServidorService.java
│   ├── AtaService.java
│   └── EquipeContratoService.java
└── ApiApplication.java     # Classe principal
```

---

## 🔗 Endpoints da API

### Base URL
```
http://localhost:8081/api
```

### Secretarias

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| GET | `/secretarias` | Listar todas |
| GET | `/secretarias/{id}` | Buscar por ID |
| POST | `/secretarias` | Criar |
| PUT | `/secretarias/{id}` | Atualizar |
| DELETE | `/secretarias/{id}` | Deletar |

### Servidores

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| GET | `/servidores` | Listar todos |
| GET | `/servidores/{id}` | Buscar por ID |
| POST | `/servidores` | Criar |
| PUT | `/servidores/{id}` | Atualizar |
| DELETE | `/servidores/{id}` | Deletar |

### Atas

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| GET | `/atas` | Listar todas |
| GET | `/atas/{id}` | Buscar por ID |
| POST | `/atas` | Criar |
| DELETE | `/atas/{id}` | Deletar |

### Equipes de Contrato

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| GET | `/equipes-contrato` | Listar todas |
| GET | `/equipes-contrato/{id}` | Buscar por ID |
| POST | `/equipes-contrato` | Criar |
| DELETE | `/equipes-contrato/{id}` | Deletar |

### Consultas (Read-Only)

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| GET | `/ativos` | Listar status |
| GET | `/tipos` | Listar tipos |
| GET | `/funcoes-equipe` | Listar funções |

---

## 📋 Exemplos de Requisições

### Criar uma Secretaria

```bash
POST /api/secretarias
Content-Type: application/json

{
  "nome": "Secretaria Municipal de Administração",
  "sigla": "ADM",
  "ativoId": 1
}
```

### Criar um Servidor

```bash
POST /api/servidores
Content-Type: application/json

{
  "nome": "João Silva",
  "cpf": 12345678901,
  "cargo": "Analista de Compras",
  "matricula": 1001,
  "email": "joao@adm.com",
  "telefone": "11999999999",
  "secretariaId": 1,
  "ativoId": 1
}
```

### Criar uma Ata

```bash
POST /api/atas
Content-Type: application/json

{
  "numero": 1,
  "ano": 2026,
  "dataInicio": "2026-01-01",
  "dataFim": "2026-12-31",
  "tipoId": 1,
  "objeto": "Aquisição de materiais de escritório",
  "ativoId": 1,
  "secretariasIds": [1, 2]
}
```

### Criar uma Equipe

```bash
POST /api/equipes-contrato
Content-Type: application/json

{
  "ataId": 1,
  "servidorId": 1,
  "funcaoId": 1,
  "dataDesignacao": "2026-01-01",
  "dataFim": null,
  "ativoId": 1
}
```

---

## 🗄️ Modelo de Dados

### Diagrama ER (Resumido)

```
SECRETARIA (1) ───── (N) ATA_SECRETARIA (N) ───── (1) ATA_REGISTRO_PRECO
     │                        │
     │                        │
     └── (N) SERVIDOR         │
                │             │
                └── (N) EQUIPE_CONTRATO (N) ─────┘
                           │
                           └── (N) FUNCAO_EQUIPE (1)

USUARIO (1) ───── (N) (created_by/updated_by em TODAS as tabelas)
```

### Principais Tabelas

| Tabela | Descrição |
|--------|-----------|
| `secretaria` | Secretarias/Departamentos |
| `servidor` | Servidores/Pessoas |
| `ata_registro_preco` | Atas de Registro de Preço |
| `ata_secretaria` | Relacionamento ATA ↔ Secretaria |
| `equipe_contrato` | Equipe do contrato (gestores/fiscais) |
| `funcao_equipe` | Funções (GESTOR_TITULAR, FISCAL, etc.) |
| `ativo` | Status (SIM/NAO) |
| `tipo` | Tipos (PRODUTO/SERVICO) |

---

## ⚙️ Configuração (application.yml)

```yaml
spring:
  datasource:
    url: jdbc:mysql://localhost:3306/contract_management?useSSL=false
    username: root
    password: root
  jpa:
    hibernate:
      ddl-auto: validate
    show-sql: true
server:
  port: 8081
  servlet:
    context-path: /api
```

---

## 🧪 Testando a API

### Usando curl

```bash
# Listar secretarias
curl -X GET http://localhost:8081/api/secretarias

# Criar secretaria
curl -X POST http://localhost:8081/api/secretarias \
  -H "Content-Type: application/json" \
  -d '{"nome":"Administração","sigla":"ADM","ativoId":1}'
```

### Usando Postman

1. Importe a coleção (em breve)
2. Configure a variável `base_url` como `http://localhost:8081/api`

---

## 📋 Scripts Disponíveis

| Comando | Descrição |
|---------|-----------|
| `mvn clean compile` | Compilar o projeto |
| `mvn spring-boot:run` | Rodar a aplicação |
| `mvn test` | Executar testes |
| `mvn package` | Gerar JAR |

---

## 🤝 Contribuição

1. Fork o projeto
2. Crie uma branch (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas alterações (`git commit -m 'feat: nova funcionalidade'`)
4. Push para a branch (`git push origin feature/nova-funcionalidade`)
5. Abra um Pull Request

---

## 📄 Licença

Este projeto é de uso interno e confidencial.

---

## 📞 Contato

Para dúvidas ou sugestões, entre em contato com a equipe de desenvolvimento.

---

**Desenvolvido com Spring Boot 4.1.0** 🚀
