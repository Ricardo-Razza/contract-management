const fs = require('fs');
const path = require('path');

const input = 'C:/Users/razza/OneDrive/Área de Trabalho/insert contratos.txt';
const servidoresPath = path.join(__dirname, 'servidores_existentes.json');
const output = 'C:/Users/razza/OneDrive/Área de Trabalho/java/contract-management/insert_contratos.sql';

const FUNCAO = { GT: 1, GS: 2, F: 3 };
const ATIVO_ID = 1;

const tipoMap = {
  ALUGUEL: 3,
  SERVICO: 2,
  PRODUTO: 1,
  PRODUTOS: 1,
};

const situacaoMap = {
  ATIVO: 1,
  DESATIVADO: 2,
  INATIVO: 2,
  NAO: 2,
  RESCINDIDO: 3,
};

const secretariaMap = {
  SMED: 1,
  ADM: 2,
  GAB: 3,
  SECULT: 4,
  SEFIPE: 5,
  SEMDHI: 6,
  SMDHI: 6,
  SEMMAPA: 7,
  SEMP: 8,
  SEMUSPT: 9,
  SESP: 10,
  SETUR: 11,
  SMCT: 12,
  SMDE: 13,
  SMDS: 14,
  SMLU: 15,
  SMOV: 16,
  SMS: 17,
  SMT: 18,
};

function normalizeKey(s) {
  return String(s || '')
    .trim()
    .toUpperCase()
    .normalize('NFD')
    .replace(/\p{M}/gu, '');
}

function normalizeName(s) {
  return String(s || '')
    .normalize('NFD')
    .replace(/\p{M}/gu, '')
    .toLowerCase()
    .replace(/[^a-z0-9\s]/g, ' ')
    .replace(/\s+/g, ' ')
    .trim();
}

function nameTokens(s) {
  return normalizeName(s)
    .split(' ')
    .filter((t) => t.length > 1 && !['de', 'da', 'do', 'das', 'dos', 'e'].includes(t));
}

function levenshtein(a, b) {
  const m = a.length;
  const n = b.length;
  const dp = Array.from({ length: m + 1 }, () => Array(n + 1).fill(0));
  for (let i = 0; i <= m; i++) dp[i][0] = i;
  for (let j = 0; j <= n; j++) dp[0][j] = j;
  for (let i = 1; i <= m; i++) {
    for (let j = 1; j <= n; j++) {
      const cost = a[i - 1] === b[j - 1] ? 0 : 1;
      dp[i][j] = Math.min(dp[i - 1][j] + 1, dp[i][j - 1] + 1, dp[i - 1][j - 1] + cost);
    }
  }
  return dp[m][n];
}

function namesSimilar(a, b) {
  const na = normalizeName(a);
  const nb = normalizeName(b);
  if (!na || !nb) return false;
  if (na === nb) return true;

  // um contém o outro (ex.: nome abreviado), exigindo tamanho mínimo
  if (Math.min(na.length, nb.length) >= 10 && (na.includes(nb) || nb.includes(na))) return true;

  const ta = nameTokens(a);
  const tb = nameTokens(b);
  if (!ta.length || !tb.length) return false;
  if (ta[0] !== tb[0]) return false;

  const lastA = ta[ta.length - 1];
  const lastB = tb[tb.length - 1];

  // primeiro + último iguais ou quase iguais (typo)
  if (lastA === lastB || (Math.max(lastA.length, lastB.length) >= 5 && levenshtein(lastA, lastB) <= 2)) {
    return true;
  }

  // overlap alto de tokens
  const setB = new Set(tb);
  const inter = ta.filter((t) => setB.has(t)).length;
  const ratio = inter / Math.max(ta.length, tb.length);
  if (ratio >= 0.7) return true;

  return false;
}

function esc(s) {
  if (s == null) return 'NULL';
  return "'" + String(s).replace(/\\/g, '\\\\').replace(/'/g, "''") + "'";
}

function parseDate(raw) {
  if (!raw) return null;
  let s = String(raw).trim();
  if (!s || /^s\/data$/i.test(s)) return null;
  s = s.replace(/[°º]/g, '');
  const m = s.match(/^(\d{1,2})\/(\d{1,2})\/(\d{4})$/);
  if (!m) return null;
  const mm = m[1].padStart(2, '0');
  const dd = m[2].padStart(2, '0');
  return `${m[3]}-${mm}-${dd}`;
}

function parseFields(recordText) {
  const fields = [];
  let field = '';
  let inQuotes = false;

  for (let i = 0; i < recordText.length; i++) {
    const c = recordText[i];
    const next = recordText[i + 1];

    if (inQuotes) {
      if (c === '"' && next === '"') {
        field += '"';
        i++;
        continue;
      }
      if (c === '"') {
        inQuotes = false;
        continue;
      }
      field += c;
      continue;
    }

    if (c === '"') {
      inQuotes = true;
      continue;
    }
    if (c === '\t') {
      fields.push(field);
      field = '';
      continue;
    }
    field += c;
  }
  fields.push(field);
  return fields;
}

function classifyRole(label) {
  const n = normalizeKey(label);
  if (n.includes('GESTOR') && (n.includes('SUPLENTE') || n.includes('SUPLETE'))) return 'GS';
  if (n.includes('GESTOR')) return 'GT';
  if (n.includes('FISCAL')) return 'F';
  return null;
}

function cleanPersonName(raw) {
  let nome = String(raw || '')
    .replace(/\s+/g, ' ')
    .replace(/^[:\-=\s]+/, '')
    .replace(/[.\s]+$/, '')
    .trim();

  // remove rótulos residuais que às vezes sobram no início
  nome = nome.replace(
    /^(?:de\s+contrato|contrato|recebimento|provis[oó]rio|definitivo|titular|suplente|local)(?:\s+(?:de\s+contrato|contrato|recebimento|provis[oó]rio|definitivo|titular|suplente|local))*\s*[:=-]?\s*/gi,
    ''
  );
  nome = nome.replace(/^[A-Z]{2,12}\s*[:=-]\s*/, '').trim();
  nome = nome.split(/(?=\b(?:Gestor|Fiscal)\b)/i)[0].trim();
  return nome;
}

function parsePeople(text) {
  if (!text) return [];
  const people = [];
  const cleaned = String(text)
    .replace(/\r/g, '\n')
    .replace(/\t/g, ' ')
    .replace(/[“”]/g, '"')
    .trim();

  const chunks = cleaned
    .split(/\n+/)
    .flatMap((line) => line.split(/(?=\b(?:Gestor|Fiscal)\b)/i).map((p) => p.trim()).filter(Boolean))
    .filter(Boolean);

  for (const chunk of chunks) {
    if (!/^(Gestor|Fiscal)\b/i.test(chunk)) continue;

    const role = classifyRole(chunk);
    if (!role) continue;

    // Remove o prefixo de cargo/função e sigla opcional; o restante é o nome
    let nome = chunk
      .replace(
        /^(?:Gestor(?:\s+Local)?(?:\s+(?:Titular|Suplente))?|Fiscal(?:\s+de\s+[Cc]ontrato)?(?:\s+Recebimento)?(?:\s+(?:Provis[oó]rio|Definitivo))?)\s*/i,
        ''
      )
      .replace(/^[A-Z]{2,12}\b\s*/, '')
      .replace(/^[:=-]\s*/, '');

    nome = cleanPersonName(nome);
    if (nome.length < 3) continue;
    if (/^(contrato|titular|suplente|provis|definit|recebimento)\b/i.test(nome)) continue;

    people.push({ role, nome });
  }

  return people;
}

function emailFromName(nome, usedEmails) {
  const tokens = nameTokens(nome);
  const first = tokens[0] || 'servidor';
  const last = tokens[tokens.length - 1] || 'imbe';
  let base = `${first[0]}.${last}`.toLowerCase().replace(/[^a-z0-9.]/g, '');
  let email = `${base}@imbu.gov.br`;
  let i = 2;
  while (usedEmails.has(email)) {
    email = `${base}${i}@imbu.gov.br`;
    i++;
  }
  usedEmails.add(email);
  return email;
}

// ---- load data ----
const existingServidores = JSON.parse(fs.readFileSync(servidoresPath, 'utf8'));
const usedEmails = new Set(existingServidores.map((s) => (s.email || '').toLowerCase()).filter(Boolean));
let nextServidorId = Math.max(0, ...existingServidores.map((s) => s.id)) + 1;
let nextMatricula = Math.max(100000, ...existingServidores.map((s) => s.matricula || 0)) + 1;

const servidorIndex = existingServidores.map((s) => ({
  id: s.id,
  nome: s.nome,
  existing: true,
}));

function findOrCreateServidor(nome) {
  const found = servidorIndex.find((s) => namesSimilar(s.nome, nome));
  if (found) return found.id;

  const id = nextServidorId++;
  const matricula = nextMatricula++;
  const email = emailFromName(nome, usedEmails);
  const novo = {
    id,
    nome: nome.trim(),
    cargo: 'NAO INFORMADO',
    matricula,
    email,
    telefone: '(51) 3692-0000',
    ativo_id: ATIVO_ID,
    existing: false,
  };
  servidorIndex.push({ id, nome: novo.nome, existing: false, data: novo });
  return id;
}

const raw = fs.readFileSync(input);
const text = raw.toString('utf8').replace(/^\uFEFF/, '');
const lines = text.split(/\r?\n/);

const records = [];
let current = [];
const recordStart = /^\d{1,4}\t\d{4}\t/;

for (let i = 0; i < lines.length; i++) {
  const line = lines[i];
  if (i === 0 && /numero/i.test(line)) continue;
  if (recordStart.test(line)) {
    if (current.length) records.push(current.join('\n'));
    current = [line];
  } else if (current.length) {
    current.push(line);
  }
}
if (current.length) records.push(current.join('\n'));

const warnings = [];
const contratos = [];
const links = [];
const equipes = [];
const membros = [];
const novosServidores = [];

let contratoId = 1;
let equipeId = 1;
let membroId = 1;

for (const rec of records) {
  const r = parseFields(rec);
  while (r.length < 13) r.push('');

  const numero = parseInt((r[0] || '').trim(), 10);
  const ano = parseInt((r[1] || '').trim(), 10);
  if (Number.isNaN(numero) || Number.isNaN(ano)) {
    warnings.push(`numero/ano invalidos: ${(r[0] || '').trim()}/${(r[1] || '').trim()}`);
    continue;
  }

  const dataInicio = parseDate(r[2]);
  const dataFim = parseDate(r[3]);
  const situacao = normalizeKey(r[4]);
  const secretariasRaw = (r[5] || '').trim();
  const tipoRaw = normalizeKey(r[6]);
  const objeto = (r[7] || '').trim() || 'NAO INFORMADO';
  const nomeContratado = (r[8] || '').trim() || 'NAO INFORMADO';
  const portaria = (r[9] || '').trim();
  const dataDesig = parseDate(r[10]);
  const gestor = (r[11] || '').trim();
  const fiscal = (r[12] || '').trim();

  const tipoId = tipoMap[tipoRaw];
  const ativoId = situacaoMap[situacao] || 1;
  if (!tipoId) warnings.push(`tipo nao mapeado [${(r[6] || '').trim()}] contrato ${numero}/${ano}`);

  const siglas = secretariasRaw
    .split(/[\n\r,;/]+/)
    .map((s) => normalizeKey(s))
    .filter(Boolean);

  const secIds = [];
  for (const sigla of siglas) {
    const sid = secretariaMap[sigla];
    if (!sid) warnings.push(`secretaria nao mapeada [${sigla}] contrato ${numero}/${ano}`);
    else if (!secIds.includes(sid)) secIds.push(sid);
  }

  const people = [...parsePeople(gestor), ...parsePeople(fiscal)];
  // dedupe por role+nome normalizado no mesmo contrato
  const seen = new Set();
  const uniquePeople = [];
  for (const p of people) {
    const key = `${p.role}|${normalizeName(p.nome)}`;
    if (seen.has(key)) continue;
    seen.add(key);
    uniquePeople.push(p);
  }

  if (!uniquePeople.length) {
    warnings.push(`sem equipe parseada contrato ${numero}/${ano}`);
  }

  contratos.push({
    id: contratoId,
    numero,
    ano,
    dataInicio,
    dataFim,
    tipoId: tipoId || null,
    objeto,
    nomeContratado,
    ativoId,
    portaria: portaria || null,
    dataDesig,
  });

  for (const sid of secIds) {
    links.push({ contratoId, secretariaId: sid, ativoId });
  }

  if (uniquePeople.length) {
    equipes.push({ id: equipeId, contratoId, ativoId });
    for (const p of uniquePeople) {
      const beforeCount = servidorIndex.length;
      const servidorId = findOrCreateServidor(p.nome);
      if (servidorIndex.length > beforeCount) {
        const created = servidorIndex[servidorIndex.length - 1];
        if (created.data) novosServidores.push(created.data);
      }
      membros.push({
        id: membroId++,
        equipeId,
        servidorId,
        funcaoId: FUNCAO[p.role],
      });
    }
    equipeId++;
  }

  contratoId++;
}

// ---- SQL (sem declarar id; auto_increment + subselects para FKs) ----
function contratoRef(contratoInternalId) {
  const c = contratos.find((x) => x.id === contratoInternalId);
  return `(SELECT id FROM contrato WHERE numero = ${c.numero} AND ano = ${c.ano} LIMIT 1)`;
}

function servidorRef(servidorInternalId) {
  const novo = novosServidores.find((s) => s.id === servidorInternalId);
  if (novo) {
    return `(SELECT id FROM servidor WHERE email = ${esc(novo.email)} LIMIT 1)`;
  }
  return String(servidorInternalId);
}

function equipeRef(equipeInternalId) {
  const e = equipes.find((x) => x.id === equipeInternalId);
  const c = contratos.find((x) => x.id === e.contratoId);
  return `(SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = ${c.numero} AND c.ano = ${c.ano} ORDER BY e.id DESC LIMIT 1)`;
}

const sql = [];
sql.push('-- Gerado a partir de insert contratos.txt');
sql.push('-- IDs nao sao declarados (AUTO_INCREMENT). Vinculos via subselect.');
sql.push('-- Funcoes: GT=1, GS=2, F=3');
sql.push('SET NAMES utf8mb4;');
sql.push('START TRANSACTION;');
sql.push('');
sql.push('-- Permite equipe vinculada so a contrato (sem ata) ou so a ata (sem contrato)');
sql.push('ALTER TABLE equipe_contrato');
sql.push('  MODIFY COLUMN ata_id INT NULL,');
sql.push('  MODIFY COLUMN contrato_id INT NULL;');
sql.push('');

if (novosServidores.length) {
  sql.push('-- Servidores novos (nao encontrados por nome aproximado)');
  sql.push('INSERT INTO servidor (nome, cargo, matricula, email, telefone, ativo_id) VALUES');
  sql.push(
    novosServidores
      .map(
        (s) =>
          `(${esc(s.nome.slice(0, 200))}, ${esc(s.cargo)}, ${s.matricula}, ${esc(s.email)}, ${esc(s.telefone)}, ${s.ativo_id})`
      )
      .join(',\n') + ';'
  );
  sql.push('');
}

sql.push(
  'INSERT INTO contrato (numero, ano, data_inicio, data_fim, tipo_id, objeto, nome_contratado, ativo_id, observacao, portaria_designacao, data_designacao) VALUES'
);
sql.push(
  contratos
    .map((c) => {
      const di = c.dataInicio ? esc(c.dataInicio) : 'NULL';
      const df = c.dataFim ? esc(c.dataFim) : 'NULL';
      const dd = c.dataDesig ? esc(c.dataDesig) : 'NULL';
      const port = c.portaria ? esc(c.portaria.slice(0, 100)) : 'NULL';
      const tipo = c.tipoId == null ? 'NULL' : c.tipoId;
      return `(${c.numero}, ${c.ano}, ${di}, ${df}, ${tipo}, ${esc(c.objeto)}, ${esc(c.nomeContratado.slice(0, 255))}, ${c.ativoId}, NULL, ${port}, ${dd})`;
    })
    .join(',\n') + ';'
);
sql.push('');

if (links.length) {
  sql.push('INSERT INTO contrato_secretaria (contrato_id, secretaria_id, ativo_id)');
  sql.push(
    links
      .map(
        (l) =>
          `SELECT ${contratoRef(l.contratoId)}, ${l.secretariaId}, ${l.ativoId}`
      )
      .join('\nUNION ALL\n') + ';'
  );
  sql.push('');
}

if (equipes.length) {
  sql.push('INSERT INTO equipe_contrato (contrato_id, ativo_id)');
  sql.push(
    equipes
      .map((e) => `SELECT ${contratoRef(e.contratoId)}, ${e.ativoId}`)
      .join('\nUNION ALL\n') + ';'
  );
  sql.push('');
}

if (membros.length) {
  sql.push('INSERT INTO equipe_membro (equipe_id, servidor_id, funcao_id)');
  sql.push(
    membros
      .map(
        (m) =>
          `SELECT ${equipeRef(m.equipeId)}, ${servidorRef(m.servidorId)}, ${m.funcaoId}`
      )
      .join('\nUNION ALL\n') + ';'
  );
  sql.push('');
}

sql.push('COMMIT;');
sql.push('');
sql.push(
  `-- Resumo: contratos=${contratos.length}, secretarias_links=${links.length}, equipes=${equipes.length}, membros=${membros.length}, servidores_novos=${novosServidores.length}`
);

if (warnings.length) {
  sql.push('-- WARNINGS:');
  for (const w of [...new Set(warnings)]) sql.push('-- ' + w.replace(/\n/g, ' '));
}

fs.writeFileSync(output, sql.join('\n'), 'utf8');

// relatório auxiliar
const report = {
  contratos: contratos.length,
  links: links.length,
  equipes: equipes.length,
  membros: membros.length,
  servidoresNovos: novosServidores.length,
  servidoresReutilizados: membros.length
    ? new Set(
        membros
          .map((m) => m.servidorId)
          .filter((id) => !novosServidores.some((s) => s.id === id))
      ).size
    : 0,
  novos: novosServidores.map((s) => ({ id: s.id, nome: s.nome, email: s.email, matricula: s.matricula })),
  warnings: [...new Set(warnings)],
};

fs.writeFileSync(path.join(__dirname, 'contratos_import_report.json'), JSON.stringify(report, null, 2), 'utf8');

console.log(JSON.stringify({
  contratos: report.contratos,
  links: report.links,
  equipes: report.equipes,
  membros: report.membros,
  servidoresNovos: report.servidoresNovos,
  servidoresReutilizados: report.servidoresReutilizados,
  warnings: report.warnings.length,
}, null, 2));
console.log('sample novos:', report.novos.slice(0, 10));
console.log('warnings:', report.warnings.slice(0, 20));
console.log('output:', output);
