# Sistema de Importação de Atas de Registro de Preço (ARP)

## 🎯 O que foi implementado

Um sistema completo de importação de dados de Registros de Preço a partir de arquivos ODS (LibreOffice) ou XLSX (Excel) para o banco de dados.

## 📦 Alterações Realizadas

### 1. **Dependências Adicionadas** (`pom.xml`)
- Apache POI 5.2.5 (leitura de arquivos ODS/XLSX)

### 2. **Novos Serviços**

#### `ArpOdsImportService.java`
- Lê e parseia arquivos ODS/XLSX
- Extrai dados de registros de preço
- Identifica colunas automaticamente
- Realiza parsing de:
  - Datas (formato DD/MM/YYYY)
  - Números e anos
  - Gestores e fiscais
  - Texto de descrição

**Métodos principais:**
- `importFromOds(MultipartFile)`: Lê arquivo e retorna lista de DTOs
- `parseRow()`: Extrai dados de uma linha
- `parseGestoresEFiscais()`: Extrai nomes e secretarias de gestores/fiscais

#### `ArpImportPersistenceService.java`
- Salva dados importados no banco de dados
- Cria ou busca registros existentes
- Gerencia transações

**Métodos principais:**
- `salvarARP()`: Salva um ARP completo
- `salvarMultipleARPs()`: Salva múltiplos ARPs
- `buscarOuCriarTipo()`, `buscarOuCriarAtivo()`, etc.

### 3. **Novos DTOs**

#### `ArpImportRequestDTO.java`
- DTO com dados de ARP a serem importados

#### `GestorFiscalDTO.java`
- DTO com dados de gestor/fiscal

### 4. **Novo Controller**

#### `ArpImportController.java`
Endpoints REST:

1. **POST `/api/arp/importar/ods`**
   - Importa dados e salva no banco
   - Response: Dados dos registros salvos

2. **POST `/api/arp/importar/preview`**
   - Preview dos dados sem salvar
   - Response: Lista de registros a serem importados

### 5. **Documentação**

#### `IMPORTACAO_ARP.md`
- Documentação completa do sistema
- Exemplos de uso
- Formato esperado do arquivo
- Tratamento de erros

#### `gerar_exemplo_arp.py`
- Script Python para gerar arquivo exemplo
- 3 registros de teste
- Requer: `pip install openpyxl`

## 🚀 Como Usar

### 1. Preparar o arquivo ODS/XLSX

Estrutura esperada:
```
Nº | Ano | Data Início | Data Fim | Situação | Tipo | Objeto | Nº | Data | Gestor | Fiscais
```

Exemplo de dados de gestor:
```
Gestor Local Titular ADM: Henrique Bernardes Aguiar
Gestor Local Suplente SMED: Mariana de Lima Ferreira
```

### 2. Gerar arquivo exemplo (opcional)
```bash
python gerar_exemplo_arp.py
```

### 3. Importar via API

**Preview:**
```bash
curl -X POST http://localhost:8080/api/arp/importar/preview \
  -F "arquivo=@registros_preco.xlsx"
```

**Importar:**
```bash
curl -X POST http://localhost:8080/api/arp/importar/ods \
  -F "arquivo=@registros_preco.xlsx"
```

## 📋 Estrutura de Dados Criada

A importação cria automaticamente:

1. **AtaRegistroPreco** - Registro principal
   - numero, ano, dataInicio, dataFim
   - tipo (referência a Tipo)
   - ativo (referência a Ativo com situação)
   - portariaDesignacao, dataDesignacao

2. **Servidor** - Para cada gestor/fiscal
   - nome (extraído do arquivo)
   - cargo, matricula, email, telefone
   - secretaria, ativo

3. **EquipeContrato** - Relacionamento
   - servidor, ata, funcao (GESTOR/FISCAL)
   - ativo

4. **Tipo** - Tipos de ARP
   - Criado se não existir

5. **Ativo** - Situações
   - Criado se não existir

6. **Secretaria** - Secretarias
   - Criada automaticamente por sigla

7. **FuncaoEquipe** - Funções
   - GESTOR, FISCAL (criadas se não existirem)

## ✅ Validações

- ✓ Arquivo não vazio
- ✓ Tipo de arquivo (ODS/XLSX)
- ✓ Cabeçalho correto
- ✓ Datas em formato DD/MM/YYYY
- ✓ Números válidos
- ✓ Nenhum registro duplicado (por número e ano)

## 🔄 Fluxo de Processamento

```
Arquivo ODS/XLSX
      ↓
Parse de Arquivo (ArpOdsImportService)
      ↓
Extração de Dados
      ↓
Validação
      ↓
Persistência (ArpImportPersistenceService)
      ↓
Criação de Entidades Relacionadas
      ↓
Banco de Dados
```

## 📝 Logging

Erros durante o processamento são registrados no console:
- Erros ao parsear linhas
- Erros ao criar servidores/gestores
- Erros na persistência

## 🔒 Segurança

- Transação ACID (tudo ou nada)
- Validação de entrada
- Tratamento de exceções
- Sem exposição de dados sensíveis

## 📚 Swagger

Após iniciar a aplicação:
```
http://localhost:8080/swagger-ui.html
```

Procure por "Importação de ARP" para ver a documentação completa.

## 🛠️ Próximas Melhorias Sugeridas

1. [ ] Importação de email/telefone dos servidores
2. [ ] Validação de datas (início < fim)
3. [ ] Relatório de importação por email
4. [ ] Importação agendada
5. [ ] Rollback automático em caso de erro

## 📞 Suporte

Consulte `IMPORTACAO_ARP.md` para mais informações.
