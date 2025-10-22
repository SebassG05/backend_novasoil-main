const fs = require('fs');
const path = require('path');

const inputPath = path.resolve(process.cwd(), 'Formatos de coordenadas', 'Madrid.csv');
const outputPath = inputPath.replace(/\.csv$/i, '_cleaned.csv');

function stripOuterQuotes(s) {
  if (s === null || s === undefined) return '';
  const str = String(s).trim();
  if (str.length >= 2 && str.startsWith('"') && str.endsWith('"')) {
    return str.slice(1, -1);
  }
  return str;
}

function isNumberLike(s) {
  if (s === null || s === undefined) return false;
  const t = stripOuterQuotes(s);
  if (t === '' || /^SD$/i.test(t) || /^#/.test(t)) return false;
  const normalized = t.replace(/,/g, '.');
  return !Number.isNaN(Number(normalized)) && isFinite(Number(normalized));
}

function normalizeCell(cell) {
  if (cell === undefined) return '';
  const withoutQuotes = stripOuterQuotes(cell);
  if (isNumberLike(withoutQuotes)) {
    return withoutQuotes.replace(/,/g, '.');
  }
  return withoutQuotes.trim();
}

function parseCSVLines(text) {
  return text.replace(/\r\n/g, '\n').split('\n');
}

try {
  const raw = fs.readFileSync(inputPath, 'utf8');
  const lines = parseCSVLines(raw);
  if (lines.length === 0) {
    console.error('Empty file');
    process.exit(1);
  }

  const header = lines[0];
  const secondLine = lines[1] || '';

  let startIndex = 1;
  if (/^,?\s*Unidad\b/i.test(secondLine) || /^,?\s*Units\b/i.test(secondLine) || /^,?\s*unidad/i.test(secondLine)) {
    startIndex = 2;
  }

  const outLines = [header];

  for (let i = startIndex; i < lines.length; i++) {
    const line = lines[i];
    if (!line) continue;
    const cells = [];
    let cur = '';
    let inQuotes = false;
    for (let j = 0; j < line.length; j++) {
      const ch = line[j];
      if (ch === '"') {
        inQuotes = !inQuotes;
        cur += ch;
        continue;
      }
      if (ch === ',' && !inQuotes) {
        cells.push(cur);
        cur = '';
        continue;
      }
      cur += ch;
    }
    cells.push(cur);

    const normalized = cells.map(normalizeCell);

    const rebuilt = normalized.map(c => (c.includes(',') || c.includes('"') ? '"' + c.replace(/"/g, '""') + '"' : c)).join(',');
    outLines.push(rebuilt);
  }

  fs.writeFileSync(outputPath, outLines.join('\n'), 'utf8');
  console.log('Wrote cleaned CSV to', outputPath);
} catch (err) {
  console.error('Error processing file:', err && err.message ? err.message : err);
  process.exit(1);
}
