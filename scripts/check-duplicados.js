const fs = require('fs');
const path = require('path');

const raw = fs.readFileSync(path.join(__dirname, 'nomes_servidores.txt'), 'utf8');
const names = raw
  .split(/\r?\n/)
  .map((s) => s.replace(/^['"]|['"]$/g, '').trim())
  .filter(Boolean);

function norm(s) {
  return s
    .normalize('NFD')
    .replace(/\p{M}/gu, '')
    .toLowerCase()
    .replace(/[^a-z0-9\s]/g, ' ')
    .replace(/\s+/g, ' ')
    .trim();
}

function tokens(s) {
  return norm(s)
    .split(' ')
    .filter((t) => t.length > 1 && !['de', 'da', 'do', 'das', 'dos', 'e'].includes(t));
}

function lev(a, b) {
  const m = a.length;
  const n = b.length;
  const dp = Array.from({ length: m + 1 }, () => Array(n + 1).fill(0));
  for (let i = 0; i <= m; i++) dp[i][0] = i;
  for (let j = 0; j <= n; j++) dp[0][j] = j;
  for (let i = 1; i <= m; i++) {
    for (let j = 1; j <= n; j++) {
      const c = a[i - 1] === b[j - 1] ? 0 : 1;
      dp[i][j] = Math.min(dp[i - 1][j] + 1, dp[i][j - 1] + 1, dp[i - 1][j - 1] + c);
    }
  }
  return dp[m][n];
}

function similar(a, b) {
  const na = norm(a);
  const nb = norm(b);
  if (na === nb) return { score: 1, why: 'igual normalizado' };
  if (Math.min(na.length, nb.length) >= 10 && (na.includes(nb) || nb.includes(na))) {
    return { score: 0.95, why: 'um contém o outro' };
  }
  const ta = tokens(a);
  const tb = tokens(b);
  if (!ta.length || !tb.length || ta[0] !== tb[0]) return null;

  const lastA = ta[ta.length - 1];
  const lastB = tb[tb.length - 1];
  const dLast = lev(lastA, lastB);
  if (lastA === lastB || (Math.max(lastA.length, lastB.length) >= 4 && dLast <= 2)) {
    const setB = new Set(tb);
    const inter = ta.filter((t) => setB.has(t)).length;
    const ratio = inter / Math.max(ta.length, tb.length);
    if (ratio >= 0.5 || lastA === lastB || dLast <= 1) {
      return { score: 0.85, why: 'mesmo primeiro + sobrenome parecido' };
    }
  }

  const setB = new Set(tb);
  const inter = ta.filter((t) => setB.has(t)).length;
  const ratio = inter / Math.max(ta.length, tb.length);
  if (ratio >= 0.75) return { score: 0.8, why: 'muitos tokens iguais' };

  if (lev(na, nb) <= 3 && ta[0] === tb[0]) return { score: 0.75, why: 'distância baixa' };
  return null;
}

const counts = {};
for (const n of names) counts[n] = (counts[n] || 0) + 1;
const exact = Object.entries(counts)
  .filter(([, c]) => c > 1)
  .sort((a, b) => b[1] - a[1]);

const ncounts = {};
for (const n of names) {
  const k = norm(n);
  (ncounts[k] = ncounts[k] || []).push(n);
}
const exactNorm = Object.entries(ncounts)
  .filter(([, arr]) => arr.length > 1)
  .map(([k, arr]) => ({ norm: k, names: [...new Set(arr)], count: arr.length }))
  .sort((a, b) => b.count - a.count);

const uniq = [...new Set(names)];
const pairs = [];
for (let i = 0; i < uniq.length; i++) {
  for (let j = i + 1; j < uniq.length; j++) {
    const s = similar(uniq[i], uniq[j]);
    if (s && s.score >= 0.75 && norm(uniq[i]) !== norm(uniq[j])) {
      pairs.push({ a: uniq[i], b: uniq[j], ...s });
    }
  }
}
pairs.sort((a, b) => b.score - a.score);

const out = [];
out.push(`TOTAL linhas: ${names.length}`);
out.push(`ÚNICOS (string): ${new Set(names).size}`);
out.push('');
out.push('=== DUPLICADOS EXATOS (mesma string repetida na lista) ===');
if (!exact.length) out.push('(nenhum)');
exact.forEach(([n, c]) => out.push(`${c}x | ${n}`));
out.push('');
out.push('=== MESMO NOME NORMALIZADO (acento/caixa/espaços) ===');
exactNorm.forEach((x) => out.push(`${x.count}x | ${x.names.join('  ||  ')}`));
out.push('');
out.push('=== PROVÁVEIS MESMA PESSOA (grafias diferentes) ===');
pairs.forEach((p) => {
  out.push(`[${p.score}] ${p.why}`);
  out.push(`  - ${p.a}`);
  out.push(`  - ${p.b}`);
  out.push('');
});

const reportPath = path.join(__dirname, 'duplicados_servidores.txt');
fs.writeFileSync(reportPath, out.join('\n'), 'utf8');
console.log(out.join('\n'));
console.log('\nRelatório salvo em:', reportPath);
