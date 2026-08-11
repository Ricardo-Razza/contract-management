# Guia de Instalação - Sistema de Importação ARP

## 📋 Pré-requisitos

- Java 21+
- Maven 3.9+
- MySQL 8.0+
- Python 3.9+ (apenas para gerar arquivos de exemplo)

## 🔧 Instalação

### 1. Clonar e Configurar

```bash
cd seu-projeto-diretorio
git pull  # ou git clone ...
```

### 2. Configurar Banco de Dados

No arquivo `application.properties` (ou `application.yml`):

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/seu_banco
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
spring.jpa.hibernate.ddl-auto=update
```

### 3. Compilar

```bash
mvn clean install -DskipTests
```

Ou com testes:

```bash
mvn clean install
```

### 4. Executar

```bash
mvn spring-boot:run
```

A aplicação estará disponível em: `http://localhost:8080`

## 📖 Usando a API

### 1. Verificar Endpoints

```bash
curl http://localhost:8080/swagger-ui.html
```

### 2. Fazer Preview de Importação

```bash
curl -X POST http://localhost:8080/api/arp/importar/preview \
  -F "arquivo=@exemplo_arp.xlsx"
```

Resposta esperada:
```json
{
  "total": 3,
  "dados": [...]
}
```

### 3. Importar Dados

```bash
curl -X POST http://localhost:8080/api/arp/importar/ods \
  -F "arquivo=@exemplo_arp.xlsx"
```

Resposta esperada:
```json
{
  "sucesso": true,
  "mensagem": "Importação realizada com sucesso",
  "registrosProcessados": 3,
  "registrosSalvos": 3,
  "detalhes": [...]
}
```

## 📁 Estrutura de Arquivos Criados

```
projeto-raiz/
├── src/
│   ├── main/java/com/contract_management/api/
│   │   ├── controller/
│   │   │   └── ArpImportController.java         [NOVO]
│   │   ├── service/
│   │   │   ├── ArpOdsImportService.java          [NOVO]
│   │   │   └── ArpImportPersistenceService.java  [NOVO]
│   │   └── dto/request/
│   │       ├── ArpImportRequestDTO.java          [NOVO]
│   │       └── GestorFiscalDTO.java              [NOVO]
│   └── test/
│       └── java/com/contract_management/api/
│           └── service/
│               └── (testes podem ser adicionados aqui)
├── pom.xml                                   [MODIFICADO]
├── IMPORTACAO_ARP.md                         [NOVO]
├── IMPORTACAO_RESUMO.md                      [NOVO]
├── gerar_exemplo_arp.py                      [NOVO]
└── exemplo_arp.xlsx                          [NOVO - gerado]
```

## ✨ Recursos Implementados

### Serviços de Importação

| Serviço | Responsabilidade |
|---------|------------------|
| `ArpOdsImportService` | Leitura e parsing de arquivo ODS/XLSX |
| `ArpImportPersistenceService` | Persistência no banco de dados |

### Endpoints

| Método | Path | Função |
|--------|------|--------|
| POST | `/api/arp/importar/preview` | Preview sem salvar |
| POST | `/api/arp/importar/ods` | Importar e salvar |

### DTOs

| DTO | Propósito |
|-----|-----------|
| `ArpImportRequestDTO` | Dados do ARP a importar |
| `GestorFiscalDTO` | Dados de gestor/fiscal |

## 🐛 Troubleshooting

### Erro: "Cabeçalho da planilha não encontrado"

**Solução:** Verifique se a primeira linha começa com "Nº" ou "N°"

### Erro: "Arquivo vazio"

**Solução:** Envie um arquivo válido com dados

### Erro: "Tipo de arquivo inválido"

**Solução:** Use arquivo .ods ou .xlsx

### Erro ao parsear data

**Solução:** Use formato DD/MM/YYYY nas datas

### Erro de conexão com banco

**Solução:** Verificar `application.properties` e credenciais do MySQL

## 📊 Monitoramento

### Logs da Aplicação

```bash
# Ver logs
tail -f target/spring.log

# Ou via console Spring Boot
mvn spring-boot:run
```

### Verificar Dados Importados

```sql
-- Verificar ARPs
SELECT * FROM ata_registro_preco;

-- Verificar Servidores
SELECT * FROM servidor;

-- Verificar Equipes
SELECT * FROM equipe_contrato;
```

## 🔒 Segurança

- Validar arquivo antes de importar
- Usar HTTPS em produção
- Implementar autenticação/autorização
- Auditar todas as importações
- Fazer backup antes de importar grandes volumes

## 📈 Performance

Para arquivos grandes (1000+ registros):

1. Aumentar memória da JVM: `-Xmx2g`
2. Usar conexão com pool de 20-50
3. Considerar processamento em lotes
4. Adicionar índices no banco

```bash
mvn spring-boot:run -Dspring-boot.run.arguments="--jvm-args=-Xmx2g"
```

## 🚀 Deployment

### Criar JAR executável

```bash
mvn clean package -DskipTests
```

JAR estará em: `target/api-0.0.1-SNAPSHOT.jar`

### Executar JAR

```bash
java -jar target/api-0.0.1-SNAPSHOT.jar
```

### Docker (opcional)

Criar `Dockerfile`:

```dockerfile
FROM openjdk:21-slim
WORKDIR /app
COPY target/api-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
```

Build e run:

```bash
docker build -t contract-management .
docker run -p 8080:8080 contract-management
```

## ✅ Checklist de Implantação

- [ ] Banco de dados criado e configurado
- [ ] application.properties ajustado
- [ ] Dependências Maven instaladas
- [ ] Código compilado com sucesso
- [ ] Testes passando
- [ ] Aplicação iniciando sem erros
- [ ] Endpoints respondendo
- [ ] Preview de importação funcionando
- [ ] Importação salvando dados corretamente
- [ ] Dados consultáveis no banco

## 📞 Contato e Suporte

- Documentação: `IMPORTACAO_ARP.md`
- Resumo: `IMPORTACAO_RESUMO.md`
- Script exemplo: `gerar_exemplo_arp.py`
- Arquivo exemplo: `exemplo_arp.xlsx`

## 📝 Notas de Versão

- **v1.0.0**: Implementação inicial
  - Leitura de ODS/XLSX
  - Importação de ARPs
  - Criação automática de entidades relacionadas
  - Endpoints REST documentados
  - Preview de dados
  - Tratamento de erros robusto

## 🔄 Próximas Versões Planejadas

- v1.1.0: Suporte a importação em lotes
- v1.2.0: Relatório de importação
- v1.3.0: Importação agendada
- v1.4.0: Validações customizáveis
