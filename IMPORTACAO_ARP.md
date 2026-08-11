# Sistema de Importação de Registros de Preço (ARP)

## Visão Geral

O sistema permite importar dados de Registros de Preço a partir de um arquivo ODS (LibreOffice Calc) ou XLSX (Excel) diretamente para o banco de dados.

## Endpoints Disponíveis

### 1. POST `/api/arp/importar/ods`
Importa dados de um arquivo ODS/XLSX e salva no banco de dados.

**Parâmetros:**
- `arquivo` (MultipartFile): Arquivo ODS ou XLSX contendo os dados

**Response (201 Created):**
```json
{
  "sucesso": true,
  "mensagem": "Importação realizada com sucesso",
  "registrosProcessados": 3,
  "registrosSalvos": 3,
  "detalhes": [
    {
      "id": 1,
      "numero": 57,
      "ano": 2022,
      "tipo": "ADM",
      "situacao": "Desativada"
    }
  ]
}
```

### 2. POST `/api/arp/importar/preview`
Lê o arquivo e retorna um preview dos dados **sem** salvar no banco.

**Parâmetros:**
- `arquivo` (MultipartFile): Arquivo ODS ou XLSX

**Response (200 OK):**
```json
{
  "total": 3,
  "dados": [
    {
      "numero": 57,
      "ano": 2022,
      "dataInicio": "2022-09-09",
      "dataFim": "2023-09-05",
      "situacao": "Desativada",
      "tipo": "ADM",
      "objeto": "Tem como objeto, visando eventual e futura...",
      "portaria": "672/2023",
      "dataDesignacao": "2023-04-14",
      "gestores": 6,
      "fiscais": 11
    }
  ]
}
```

## Estrutura Esperada do Arquivo ODS

O arquivo deve conter as seguintes colunas (em ordem):

| Coluna | Tipo | Obrigatório | Descrição |
|--------|------|-------------|-----------|
| Nº | Número | Sim | Número do registro de preço |
| Ano | Número | Sim | Ano do registro |
| Data Início | Data | Sim | Data de início (formato DD/MM/YYYY) |
| Data Fim | Data | Não | Data de término (formato DD/MM/YYYY) |
| Situação | Texto | Sim | Situação do registro (ex: "Desativada", "Ativa") |
| Tipo | Texto | Sim | Tipo do registro (ex: "ADM", "SMED", "SMS") |
| Objeto | Texto | Sim | Descrição do objeto do registro |
| (Portaria) Nº | Texto | Não | Número da portaria |
| (Portaria) Data | Data | Não | Data da portaria |
| Gestor | Texto | Não | Gestores responsáveis |
| Fiscais | Texto | Não | Fiscais responsáveis |

## Formato dos Gestores e Fiscais

Os dados de gestores e fiscais devem seguir este padrão:

```
Gestor Local Titular ADM: Henrique Bernardes Aguiar
Gestor Local Suplente ADM: Elenice Rojas da S. Lopes
Gestor Local Titular SMED: Mariana de Lima Ferreira
Gestor Local Suplente SMED: Roselma Costa
```

ou

```
Fiscal Local ADM: Gislaine Roberto Rodrigues
Fiscal Local SMED: Angelita Simas Valentim Claro
Fiscal: Jordano Smorlarck Dos Santos
```

**Padrão esperado:**
- `[Gestor|Fiscal] [Local] [Titular|Suplente] [SIGLA_SECRETARIA]: [NOME_COMPLETO]`

Cada pessoa deve estar em uma linha separada e será automaticamente criada como um `Servidor` no sistema.

## Fluxo de Importação

1. **Leitura do arquivo**: O arquivo ODS/XLSX é lido e parseado
2. **Extração de dados**: Cada linha é convertida em um objeto `ArpImportRequestDTO`
3. **Criação de entidades**:
   - `AtaRegistroPreco`: Criada com os dados principais
   - `Tipo`: Buscado ou criado se não existir
   - `Ativo`: Buscado ou criado com base na situação
   - `Servidor`: Criado para cada gestor/fiscal único
   - `Secretaria`: Criada ou buscada para cada secretaria
   - `FuncaoEquipe`: Criada para GESTOR/FISCAL
   - `EquipeContrato`: Criada para relacionar Servidor com AtaRegistroPreco

## Exemplo de Uso com cURL

### Preview (sem salvar):
```bash
curl -X POST http://localhost:8080/api/arp/importar/preview \
  -F "arquivo=@registros_preco.ods"
```

### Importar (com salvar):
```bash
curl -X POST http://localhost:8080/api/arp/importar/ods \
  -F "arquivo=@registros_preco.ods"
```

## Tratamento de Erros

| Código | Erro | Descrição |
|--------|------|-----------|
| 400 | Arquivo vazio | Enviar um arquivo válido |
| 400 | Tipo de arquivo inválido | Enviar arquivo .ods ou .xlsx |
| 400 | Nenhum dado encontrado | O arquivo não contém dados válidos |
| 400 | Erro no formato | Verificar formato do cabeçalho |
| 500 | Erro ao ler arquivo | Verificar se o arquivo está corrompido |
| 500 | Erro ao processar importação | Verificar logs do servidor |

## Notas Importantes

1. **Duplicatas**: Se um registro com o mesmo número e ano já existe, ele será sobrescrito
2. **Secretarias**: Se a secretaria não existir, ela será criada automaticamente
3. **Servidores**: Se um servidor com o mesmo nome já existe, ele será reutilizado
4. **Validação**: A importação valida as datas e números automaticamente
5. **Transação**: Toda a importação é feita em uma única transação; se algo falhar, nada será salvo

## Dados Criados Automaticamente

### Ativo
Se a situação não existir, um novo registro será criado em `ativo` table.

### Tipo
Se o tipo não existir, um novo registro será criado em `tipo` table.

### Secretaria
Se a secretaria não existir, ela será criada automaticamente com base na sigla extraída dos gestores/fiscais.

### Servidor
Se o servidor não existir, será criado com:
- Nome: Extraído do campo
- Cargo: "Servidor"
- Matrícula: 0 (padrão)
- Email: "nao.informado@example.com" (padrão)
- Telefone: "N/A" (padrão)

Você pode atualizar esses dados posteriormente via API de Servidores.

## Exemplo de Arquivo ODS

Para um exemplo prático, crie um arquivo ODS com as seguintes linhas:

| Nº | Ano | Data Início | Data Fim | Situação | Tipo | Objeto | Nº | Data | Gestor | Fiscais |
|----|-----|-------------|----------|----------|------|--------|-----|------|--------|---------|
| 57 | 2022 | 09/09/2022 | 05/09/2023 | Desativada | ADM | Aquisição de equipamentos | 672/2023 | 14/04/2023 | Gestor Local Titular ADM: Henrique Bernardes Aguiar | Fiscal Local ADM: Gislaine Roberto Rodrigues |

## API Documentation

Após iniciar a aplicação, a documentação completa está disponível em:
```
http://localhost:8080/swagger-ui.html
```

## Troubleshooting

### Problema: "Cabeçalho da planilha não encontrado"
- Verifique se a primeira linha contém os nomes das colunas
- Confirme que a primeira coluna é "Nº" ou "N°"

### Problema: "Erro ao parsear data"
- Verifique o formato das datas: deve ser DD/MM/YYYY
- Exemplo: 09/09/2022

### Problema: "Nenhum servidor encontrado"
- Certifique-se que a coluna de gestores/fiscais tem o padrão correto
- Verifique se há quebras de linha entre cada pessoa

## Suporte

Para mais informações, consulte a documentação de Swagger ou contate o suporte técnico.
