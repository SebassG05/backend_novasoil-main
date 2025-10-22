import fs from 'fs';
import path from 'path';

// This script reads the messy CSV, removes the second 'unit' row,
// normalizes decimal commas to dots for numeric-looking fields, and
// writes a cleaned CSV next to the original file.

const inputPath = path.resolve(process.cwd(), 'Formatos de coordenadas', 'ESTADISTICOS.SUELO - R. F-Q (1).csv');
const outputPath = inputPath.replace('.csv', '_cleaned.csv');

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
  // remove surrounding quotes for processing
  const withoutQuotes = stripOuterQuotes(cell);
  // if numeric-like, return normalized number (no quotes)
  if (isNumberLike(withoutQuotes)) {
    return withoutQuotes.replace(/,/g, '.');
  }
  // otherwise return trimmed text without outer quotes
  return withoutQuotes.trim();
}

function parseCSVLines(text) {
  // Split into lines preserving quoted newlines is complex; assume file is line-based without embedded newlines in quoted fields.
  return text.replace(/\r\n/g, '\n').split('\n');
}

try {
  const raw = fs.readFileSync(inputPath, 'utf8');
  const lines = parseCSVLines(raw);
  if (lines.length === 0) {
    console.error('Empty file');
    process.exit(1);
  }

  // The file contains a header line, then a units line (beginning with ,Unidad). We will remove the units line if present.
  const header = lines[0];
  const secondLine = lines[1] || '';

  let startIndex = 1; // by default keep lines from index 1
  if (/^,?\s*Unidad\b/i.test(secondLine)) {
    // skip the units row
    startIndex = 2;
  }

  const outLines = [header];

  for (let i = startIndex; i < lines.length; i++) {
    const line = lines[i];
    if (!line) continue; // skip empty
    // Split on commas but keep quoted fields together
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

    // Rebuild CSV-compliant line: if cell contains comma, wrap with quotes
    const rebuilt = normalized.map(c => (c.includes(',') || c.includes('"') ? '"' + c.replace(/"/g, '""') + '"' : c)).join(',');
    outLines.push(rebuilt);
  }

  fs.writeFileSync(outputPath, outLines.join('\n'), 'utf8');
  console.log('Wrote cleaned CSV to', outputPath);
} catch (err) {
  console.error('Error processing file:', err.message);
  process.exit(1);
}
