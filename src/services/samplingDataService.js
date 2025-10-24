import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import csv from 'csv-parser';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

class SamplingDataService {

        // --- TAMARGUILLO ---
    /**
     * Procesa los CSV de Tamarguillo para tres tablas
     * tipo: 'tamarguillo1', 'tamarguillo2', 'tamarguillo3'
     */
    async processSamplingDataTamarguillo(tipo) {
        // tamarguillo1: tabla Sampling Tamarguillo Park.csv
        // tamarguillo2: SUBSOIL de estadísticos
        // tamarguillo3: TOPSOIL de estadísticos
        if (tipo === 'tamarguillo1') {
            // Leer el CSV principal (una sola tabla)
            const filePath = this.csvPath;
            if (!fs.existsSync(filePath)) {
                throw new Error('Archivo Sampling Tamarguillo Park.csv no encontrado');
            }
            const csvContent = fs.readFileSync(filePath, 'utf8');
            const lines = csvContent.split(/\r?\n/);
            const headers = lines[0].split(';').map(h => h.trim());
            const data = [];
            for (let i = 1; i < lines.length; i++) {
                const row = lines[i];
                if (!row || row.trim() === '' || row.startsWith(';')) continue;
                const values = row.split(';');
                const obj = {};
                for (let j = 0; j < headers.length; j++) {
                    obj[headers[j] || `col${j}`] = values[j] !== undefined ? values[j].trim() : '';
                }
                data.push(obj);
            }
            return data;
        } else if (tipo === 'tamarguillo2') {
            // SUBSOIL del CSV estadísticos
            const { subsoil } = await this.getEstadisticosTables();
            return subsoil;
        } else if (tipo === 'tamarguillo3') {
            // TOPSOIL del CSV estadísticos
            const { topsoil } = await this.getEstadisticosTables();
            return topsoil;
        } else {
            throw new Error('Tipo de tabla Tamarguillo no válido');
        }
    }

    /**
     * Procesa el CSV ESTADISTICOS.SUELO - R. F-Q (1).csv y separa TOPSOIL y SUBSOIL
     */
    async getEstadisticosTables() {
        const filePath = path.join(__dirname, '../../Formatos de coordenadas/ESTADISTICOS.SUELO - R. F-Q (1).csv');
        if (!fs.existsSync(filePath)) {
            throw new Error('Archivo ESTADISTICOS.SUELO - R. F-Q (1).csv no encontrado');
        }
        const csvContent = fs.readFileSync(filePath, 'utf8');
        const lines = csvContent.split(/\r?\n/);

        // Buscar los índices de inicio de cada tabla
        let topsoilStart = -1, subsoilStart = -1;
        for (let i = 0; i < lines.length; i++) {
            if (lines[i].includes('TOPSOIL Sample')) topsoilStart = i;
            if (lines[i].includes('SUBSOIL  Sample')) subsoilStart = i;
        }
        if (topsoilStart === -1 || subsoilStart === -1) {
            throw new Error('No se encontraron ambas tablas TOPSOIL y SUBSOIL en el CSV');
        }

        // Buscar fin de cada tabla
        let topsoilEnd = subsoilStart - 1;
        let subsoilEnd = lines.length;
        for (let i = subsoilStart + 1; i < lines.length; i++) {
            if (lines[i].trim() === '' && i > subsoilStart + 2) {
                subsoilEnd = i;
                break;
            }
        }

        // Extraer headers y unidades para cada tabla
        const topsoilHeaders = lines[topsoilStart].split(',').map(h => h.trim());
        const topsoilUnits = lines[topsoilStart + 1].split(',').map(h => h.trim());
        const subsoilHeaders = lines[subsoilStart].split(',').map(h => h.trim());
        const subsoilUnits = lines[subsoilStart + 1].split(',').map(h => h.trim());

        // Extraer datos de cada tabla
        function parseTable(start, end, headers, units) {
            const data = [];
            for (let i = start + 2; i < end; i++) {
                const row = lines[i];
                if (!row || row.trim() === '' || row.startsWith(',')) continue;
                const values = row.split(',');
                if (values.length < 2) continue;
                const obj = {};
                for (let j = 0; j < headers.length; j++) {
                    obj[headers[j] || `col${j}`] = values[j] !== undefined ? values[j].trim() : '';
                }
                data.push(obj);
            }
            return data;
        }

        const topsoil = parseTable(topsoilStart, topsoilEnd, topsoilHeaders, topsoilUnits);
        const subsoil = parseTable(subsoilStart, subsoilEnd, subsoilHeaders, subsoilUnits);
        return { topsoil, subsoil };
    }

    async getEstadisticosTopsoil() {
        const { topsoil } = await this.getEstadisticosTables();
        return topsoil;
    }

    async getEstadisticosSubsoil() {
        const { subsoil } = await this.getEstadisticosTables();
        return subsoil;
    }

    /**
     * Procesa una fila individual del CSV de Bulgaria
     */
    processSampleRowBulgaria(row) {
        try {
            // Copiar todas las columnas del CSV
            const sample = {};
            for (const key in row) {
                sample[key.trim()] = typeof row[key] === 'string' ? row[key].trim() : row[key];
            }
            // Extraer coordenadas del campo 'Coords'
            const coordRaw = sample['Coords'] || sample['coords'] || '';
            let lat = null, lon = null;
            if (coordRaw) {
                // Formato esperado: 42°18'23.001''N 25°00'21.681''E
                const dmsRegex = /([0-9]{2})°([0-9]{2})'([0-9.]+)''([NS])\s+([0-9]{2})°([0-9]{2})'([0-9.]+)''([EW])/i;
                const match = coordRaw.match(dmsRegex);
                if (match) {
                    // Latitud
                    let degLat = parseInt(match[1]);
                    let minLat = parseInt(match[2]);
                    let secLat = parseFloat(match[3]);
                    let dirLat = match[4].toUpperCase();
                    lat = degLat + minLat / 60 + secLat / 3600;
                    if (dirLat === 'S') lat *= -1;
                    // Longitud
                    let degLon = parseInt(match[5]);
                    let minLon = parseInt(match[6]);
                    let secLon = parseFloat(match[7]);
                    let dirLon = match[8].toUpperCase();
                    lon = degLon + minLon / 60 + secLon / 3600;
                    if (dirLon === 'W') lon *= -1;
                }
            }
            sample['lat'] = lat;
            sample['lon'] = lon;
            return sample;
        } catch (error) {
            console.error('Error procesando fila del CSV de Bulgaria:', error, row);
            return null;
        }
    }
    constructor() {
        this.csvPath = path.join(__dirname, '../../Formatos de coordenadas/Sampling Tamarguillo Park.csv');
        this.csvPathGermany = path.join(__dirname, '../../Formatos de coordenadas/Alemania.csv');
        this.csvPathBulgaria = path.join(__dirname, '../../Formatos de coordenadas/Bulgaria.csv');
        this.csvPathLetonia = path.join(__dirname, '../../Formatos de coordenadas/Letonia.csv');
        this.csvPathMadrid = path.join(__dirname, '../../Formatos de coordenadas/Madrid.csv');
        this.csvPathItaly = path.join(__dirname, '../../Formatos de coordenadas/ITALY_2_CS_FLORA_DATA.csv');
        this.csvPathItalyCiraa = path.join(__dirname, '../../Formatos de coordenadas/ITALY_CIRAA1.csv');
        this.csvPathItalyCiraa2 = path.join(__dirname, '../../Formatos de coordenadas/ITALY_CIRAA2.csv');
        this.csvPathItalyCiraa3 = path.join(__dirname, '../../Formatos de coordenadas/ITALY_CIRAA3.csv');
    }

    /**
     * Procesa una fila individual del CSV de Madrid
     */

    processSampleRowMadrid(row) {
        try {
            // Mantener claves originales y limpiar valores
            const sample = {};
            for (const key in row) {
                sample[key.trim()] = typeof row[key] === 'string' ? row[key].trim() : row[key];
            }
            // Extraer lat/lon de los campos 'Latitude' y 'Longitude' si existen
            let lat = null, lon = null;
            // 1. Intentar con Latitude/Longitude
            if (sample['Latitude'] && sample['Longitude']) {
                const latStr = String(sample['Latitude']).replace(',', '.').replace(/\s+/g, '');
                const lonStr = String(sample['Longitude']).replace(',', '.').replace(/\s+/g, '');
                lat = parseFloat(latStr);
                lon = parseFloat(lonStr);
            }
            // 2. Intentar con minúsculas
            if ((lat === null || isNaN(lat)) && sample['latitude'] && sample['longitude']) {
                const latStr = String(sample['latitude']).replace(',', '.').replace(/\s+/g, '');
                const lonStr = String(sample['longitude']).replace(',', '.').replace(/\s+/g, '');
                lat = parseFloat(latStr);
                lon = parseFloat(lonStr);
            }
            // 3. Intentar con columnas _124/_125
            if ((lat === null || isNaN(lat)) && sample['_124'] && sample['_125']) {
                const latStr = String(sample['_124']).replace(',', '.').replace(/\s+/g, '');
                const lonStr = String(sample['_125']).replace(',', '.').replace(/\s+/g, '');
                lat = parseFloat(latStr);
                lon = parseFloat(lonStr);
            }
            // 4. Intentar con columnas _125/_126
            if ((lat === null || isNaN(lat)) && sample['_125'] && sample['_126']) {
                const latStr = String(sample['_125']).replace(',', '.').replace(/\s+/g, '');
                const lonStr = String(sample['_126']).replace(',', '.').replace(/\s+/g, '');
                lat = parseFloat(latStr);
                lon = parseFloat(lonStr);
            }
            // 5. Intentar con columnas _124/_126 (por si acaso)
            if ((lat === null || isNaN(lat)) && sample['_124'] && sample['_126']) {
                const latStr = String(sample['_124']).replace(',', '.').replace(/\s+/g, '');
                const lonStr = String(sample['_126']).replace(',', '.').replace(/\s+/g, '');
                lat = parseFloat(latStr);
                lon = parseFloat(lonStr);
            }
            // Si hay coordenadas válidas, añadirlas
            if (typeof lat === 'number' && !isNaN(lat) && typeof lon === 'number' && !isNaN(lon)) {
                sample['lat'] = lat;
                sample['lon'] = lon;
                sample['Latitude'] = lat;
                sample['Longitude'] = lon;
            }
            // Devolver SIEMPRE la fila, aunque no tenga coordenadas
            return sample;
        } catch (error) {
            console.error('Error procesando fila del CSV de Madrid:', error, row);
            return row; // Devolver la fila original aunque haya error
        }
    }

    /**
     * Procesa una fila individual del CSV de Letonia
     */

    processSampleRowLetonia(row) {
        try {
            // Normalizar claves a snake_case y limpiar valores
            const sample = {};
            for (const key in row) {
                const cleanKey = key.trim().replace(/\s+/g, '_').replace(/[^a-zA-Z0-9_]/g, '').toLowerCase();
                sample[cleanKey] = typeof row[key] === 'string' ? row[key].trim() : row[key];
            }
            // Extraer lat/lon del campo 'coord_lat__long' (normalizado)
            let lat = null, lon = null;
            const coordRaw = sample['coord_lat_long'] || sample['coord_lat__long'] || '';
            if (coordRaw && coordRaw.includes(',')) {
                // Ejemplo: "56.738763, 23.220368"
                const [latStr, lonStr] = coordRaw.split(',').map(s => s.trim());
                lat = parseFloat(latStr.replace(',', '.'));
                lon = parseFloat(lonStr.replace(',', '.'));
            }
            sample['lat'] = lat;
            sample['lon'] = lon;
            return sample;
        } catch (error) {
            console.error('Error procesando fila del CSV de Letonia:', error, row);
            return null;
        }
    }

    /**
     * Procesa una fila individual del CSV de Estonia
     */

        processSampleRowEstonia(row) {
        try {
            // Copiar todas las columnas del CSV
            const sample = {};
            for (const key in row) {
                sample[key.trim()] = typeof row[key] === 'string' ? row[key].trim() : row[key];
            }
            // Coordenadas
            sample['lat'] = parseFloat(sample['Coord (Lat)']?.replace(',', '.'));
            sample['lon'] = parseFloat(sample['Coord (Long)']?.replace(',', '.'));
            return sample;
        } catch (error) {
            console.error('Error procesando fila del CSV de Estonia:', error, row);
            return null;
        }
    }

    /**
     * Procesa el CSV completo de Italia (formato transpuesto especial)
     */
    async processSamplingDataItaly() {
        try {
            if (!fs.existsSync(this.csvPathItaly)) {
                throw new Error('Archivo CSV de Italia no encontrado');
            }

            const samples = [];
            const csvContent = fs.readFileSync(this.csvPathItaly, 'utf8');
            const lines = csvContent.split('\n').filter(line => line.trim());
            
            // Crear dos objetos para los dos períodos de tiempo
            const sample2015 = {
                'Period': 'Pre-planting (October 2015)',
                'Management': 'Conventional agronomic management with annual cereal crops',
                'Coord (Lat & Long)': '43°28\'44"N 10°32\'55"E'
            };
            
            const sample2024 = {
                'Period': 'Post-planting (May 2024)', 
                'Management': '9 years after planting with organic/biodynamic management',
                'Coord (Lat & Long)': '43°28\'44"N 10°32\'55"E'
            };

            // Procesar cada línea del CSV
            for (const line of lines) {
                const columns = this.parseCSVLine(line);
                if (columns.length >= 3 && columns[0].trim() && 
                    !columns[0].includes('Italy 2: Flora') && 
                    !columns[0].includes('Lavender pre-planting') &&
                    columns[0] !== '') {
                    
                    const parameterName = columns[0].trim();
                    const value2015 = columns[1] ? columns[1].trim() : 'NA';
                    const value2024 = columns[2] ? columns[2].trim() : 'NA';
                    
                    sample2015[parameterName] = value2015;
                    sample2024[parameterName] = value2024;
                }
            }

            // Procesar coordenadas para ambas muestras
            [sample2015, sample2024].forEach(sample => {
                const coordRaw = sample['Coord (Lat & Long)'] || '';
                let lat = null, lon = null;
                if (coordRaw) {
                    const dmsRegex = /([0-9]{2})°([0-9]{2})'([0-9.]+)"([NS])\s+([0-9]{2})°([0-9]{2})'([0-9.]+)"([EW])/i;
                    const match = coordRaw.match(dmsRegex);
                    if (match) {
                        // Latitud
                        let degLat = parseInt(match[1]);
                        let minLat = parseInt(match[2]);
                        let secLat = parseFloat(match[3]);
                        let dirLat = match[4].toUpperCase();
                        lat = degLat + minLat / 60 + secLat / 3600;
                        if (dirLat === 'S') lat *= -1;
                        
                        // Longitud
                        let degLon = parseInt(match[5]);
                        let minLon = parseInt(match[6]);
                        let secLon = parseFloat(match[7]);
                        let dirLon = match[8].toUpperCase();
                        lon = degLon + minLon / 60 + secLon / 3600;
                        if (dirLon === 'W') lon *= -1;
                    }
                }
                sample['lat'] = lat;
                sample['lon'] = lon;
            });

            samples.push(sample2015, sample2024);
            return samples;
        } catch (error) {
            console.error('Error procesando CSV de Italia:', error);
            return [];
        }
    }

    /**
     * Función auxiliar para parsear líneas CSV con comillas
     */
    parseCSVLine(line) {
        const result = [];
        let current = '';
        let inQuotes = false;
        
        for (let i = 0; i < line.length; i++) {
            const char = line[i];
            
            if (char === '"') {
                inQuotes = !inQuotes;
            } else if (char === ',' && !inQuotes) {
                result.push(current);
                current = '';
            } else {
                current += char;
            }
        }
        
        result.push(current);
        return result;
    }

    /**
     * Procesa el CSV completo de Italia CIRAA (formato tabular)
     */
    async processSamplingDataItalyCiraa() {
        try {
            if (!fs.existsSync(this.csvPathItalyCiraa)) {
                throw new Error('Archivo CSV de Italia CIRAA no encontrado');
            }

            const samples = [];
            const csvContent = fs.readFileSync(this.csvPathItalyCiraa, 'utf8');
            const lines = csvContent.split('\n').filter(line => line.trim());
            
            // Skip header lines
            let dataStartIndex = 0;
            for (let i = 0; i < lines.length; i++) {
                if (lines[i].includes('TILLAGE,N LEVEL,COVER CROP')) {
                    dataStartIndex = i + 1;
                    break;
                }
            }

            // Parse headers
            const headerLine = lines[dataStartIndex - 1];
            const headers = headerLine.split(',').map(h => h.trim().replace(/"/g, ''));
            
            // Process data lines
            for (let i = dataStartIndex; i < lines.length; i++) {
                const line = lines[i].trim();
                if (!line) continue;
                
                const values = line.split(',').map(v => v.trim().replace(/"/g, ''));
                
                if (values.length >= headers.length) {
                    const sample = {};
                    
                    for (let j = 0; j < headers.length; j++) {
                        sample[headers[j]] = values[j] || '';
                    }
                    
                    // Add derived fields for better display
                    sample['Treatment'] = `${sample['TILLAGE']} - ${sample['N LEVEL']}N - ${sample['COVER CROP']}`;
                    sample['Description'] = `Tillage: ${sample['TILLAGE']}, Nitrogen Level: ${sample['N LEVEL']}, Cover Crop: ${sample['COVER CROP']}`;
                    sample['Year'] = sample['YEAR'] || '';
                    sample['ID'] = samples.length + 1;
                    sample['Date'] = sample['YEAR'] ? `Year ${sample['YEAR']}` : 'Not specified';
                    sample['SamplingType'] = `${sample['TILLAGE']}-${sample['COVER CROP']}`;
                    sample['LithologyDescription'] = sample['Treatment'];
                    sample['Observations'] = `Clay: ${sample['CLAY (g 100 g-1)']}%, Silt: ${sample['SILT (g 100 g-1)']}%, Sand: ${sample['SAND (g 100 g-1)']}%, pH: ${sample['pH']}, Total N: ${sample['Total N [g kg-1]']} g/kg, SOM: ${sample['SOM [g 100 g -1]']}%, C:N ratio: ${sample['C:N ratio']}`;
                    
                    // Use fixed coordinates for the CIRAA experiment site
                    sample['Coordinates'] = '43.669059,10.310458';
                    sample['lat'] = 43.669059;
                    sample['lon'] = 10.310458;
                    
                    samples.push(sample);
                }
            }

            console.log(`Procesados ${samples.length} muestras de Italia CIRAA`);
            return samples;

        } catch (error) {
            console.error('Error procesando CSV de Italia CIRAA:', error);
            throw error;
        }
    }

    /**
     * Función simple para procesar CIRAA2 y CIRAA3 CSVs
     */
    async processSimpleCiraaCSV(csvPath, datasetName) {
        try {
            if (!fs.existsSync(csvPath)) {
                throw new Error(`Archivo CSV de ${datasetName} no encontrado`);
            }

            const samples = [];
            const csvContent = fs.readFileSync(csvPath, 'utf8');
            const lines = csvContent.split('\n').filter(line => line.trim());
            
            // Buscar la línea de headers - para CIRAA2 buscar "SYSTEM" y para CIRAA3 otros identificadores
            let headerIndex = -1;
            for (let i = 0; i < lines.length; i++) {
                const line = lines[i].toLowerCase();
                if (line.includes('system') && line.includes('year') || 
                    line.includes('tillage') && line.includes('system')) {
                    headerIndex = i;
                    break;
                }
            }
            
            if (headerIndex === -1) {
                console.log(`No se encontraron headers en ${datasetName}`);
                return samples;
            }
            
            const headers = lines[headerIndex].split(',').map(h => h.trim().replace(/"/g, ''));
            console.log(`Headers encontrados en ${datasetName}:`, headers);
            
            // Procesar datos
            for (let i = headerIndex + 1; i < lines.length; i++) {
                const line = lines[i].trim();
                if (!line) continue;
                
                const values = line.split(',').map(v => v.trim().replace(/"/g, ''));
                if (values.length >= 2 && values[0] && values[1]) {
                    const sample = {};
                    
                    headers.forEach((header, index) => {
                        if (values[index]) {
                            sample[header] = values[index];
                        }
                    });
                    
                    // Campos básicos para la tabla - asegurar que no hay desplazamiento
                    sample['ID'] = samples.length + 1;
                    sample['DATE'] = sample['YEAR'] || 'N/A';
                    sample['SAMPLINGTYPE'] = 'N/A';
                    sample['DESCRIPTION'] = `${datasetName} - undefined`;
                    sample['COORDINATES'] = '43.669059,10.310458';
                    sample['LAT'] = 43.669059;
                    sample['LON'] = 10.310458;
                    
                    samples.push(sample);
                }
            }

            console.log(`Procesados ${samples.length} muestras de ${datasetName}`);
            return samples;

        } catch (error) {
            console.error(`Error procesando CSV de ${datasetName}:`, error);
            throw error;
        }
    }

    /**
     * Procesa el archivo CSV de datos de muestreo
     */
    async processSamplingData(csvType = 'tamarguillo') {
        try {
            let csvPath, separator = ';', headers = undefined, rowProcessor = this.processSampleRow.bind(this);
            if (csvType === 'germany') {
                csvPath = this.csvPathGermany;
                separator = ';';
                headers = undefined;
                rowProcessor = this.processSampleRowGermany.bind(this);
            } else if (csvType === 'bulgaria') {
                csvPath = this.csvPathBulgaria;
                separator = ',';
                headers = undefined;
                rowProcessor = this.processSampleRowBulgaria.bind(this);
            } else if (csvType === 'estonia') {
                csvPath = path.join(__dirname, '../../Formatos de coordenadas/Estonia.csv');
                separator = ',';
                headers = undefined;
                rowProcessor = this.processSampleRowEstonia.bind(this);
            } else if (csvType === 'letonia') {
                csvPath = this.csvPathLetonia;
                separator = ',';
                headers = undefined;
                rowProcessor = this.processSampleRowLetonia.bind(this);
            } else if (csvType === 'madrid') {
                csvPath = this.csvPathMadrid;
                separator = ',';
                headers = undefined;
                rowProcessor = this.processSampleRowMadrid.bind(this);
            } else if (csvType === 'italy') {
                // Italia tiene un formato especial transpuesto, usar función dedicada
                return await this.processSamplingDataItaly();
            } else if (csvType === 'italy-ciraa') {
                // Italia CIRAA tiene un formato tabular especial, usar función dedicada
                return await this.processSamplingDataItalyCiraa();
            } else if (csvType === 'italy-ciraa2') {
                // Italia CIRAA2 (CSV simplificado)
                return await this.processSimpleCiraaCSV(this.csvPathItalyCiraa2, 'CIRAA2');
            } else if (csvType === 'italy-ciraa3') {
                // Italia CIRAA3 (CSV simplificado)
                return await this.processSimpleCiraaCSV(this.csvPathItalyCiraa3, 'CIRAA3');
            } else if (csvType === 'asaja') {
                csvPath = path.join(__dirname, '../../Formatos de coordenadas/Asaja.csv');
                separator = ',';
                headers = undefined;
                rowProcessor = this.processSampleRowAsaja.bind(this);
            } else {
                csvPath = this.csvPath;
            }
            if (!fs.existsSync(csvPath)) {
                throw new Error('Archivo CSV de muestreo no encontrado');
            }
            const samples = [];
            return new Promise((resolve, reject) => {
                fs.createReadStream(csvPath)
                    .pipe(csv({ separator, headers }))
                    .on('data', (row) => {
                        const sample = rowProcessor(row);
                        if (sample) {
                            samples.push(sample);
                        }
                    })
                    .on('end', () => {
                        console.log(`Procesadas ${samples.length} muestras de suelo (${csvType})`);
                        resolve(samples);
                    })
                    .on('error', (error) => {
                        reject(error);
                    });
            });
        } catch (error) {
            throw error;
        }
    }

    /**
     * Procesa una fila individual del CSV de Alemania
     */
    processSampleRowGermany(row) {
        try {
            // Copiar todas las columnas del CSV
            const sample = {};
            for (const key in row) {
                sample[key.trim()] = typeof row[key] === 'string' ? row[key].trim() : row[key];
            }

            // Mejorar lógica de coordenadas
            const coordRaw = sample['Coord (Lat & Long)'] || sample['Coord'] || '';
            let coordX = '';
            let coordY = '';
            if (coordRaw.includes(';')) {
                // Ejemplo: "48° 17' 59.40" N;  9° 4' 55.37" O"
                const [lat, lon] = coordRaw.split(';');
                coordY = lat.replace(/[^0-9.,-]/g, '').replace(',', '.').trim();
                coordX = lon.replace(/[^0-9.,-]/g, '').replace(',', '.').trim();
            } else if (coordRaw) {
                // Si solo hay una coordenada, poner en Y
                coordY = coordRaw.replace(/[^0-9.,-]/g, '').replace(',', '.').trim();
            }
            sample['coordX'] = coordX;
            sample['coordY'] = coordY;

            return sample;
        } catch (error) {
            console.error('Error procesando fila del CSV de Alemania:', error, row);
            return null;
        }
    }

    /**
     * Procesa una fila individual del CSV
     */
    processSampleRow(row) {
        try {
            // Limpiar y validar los datos
            const longitude = parseFloat(row['X_WG84']?.replace(',', '.'));
            const latitude = parseFloat(row['Y_WG84']?.replace(',', '.'));
            
            if (isNaN(longitude) || isNaN(latitude)) {
                return null;
            }

            return {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [longitude, latitude]
                },
                properties: {
                    code: row.code?.trim(),
                    id: row.id?.trim(),
                    date: row.Date?.trim(),
                    samplingType: row['Sampling type']?.trim(),
                    lithologyDescription: row['Lithology description']?.trim(),
                    observations: row.Observations?.trim(),
                    coordinates: {
                        longitude: longitude,
                        latitude: latitude
                    }
                }
            };
        } catch (error) {
            console.error('Error procesando fila del CSV:', error, row);
            return null;
        }
    }

    processSampleRowAsaja(row) {
        try {
            // Normalizar claves a snake_case y limpiar valores
            const sample = {};
            for (const key in row) {
                const cleanKey = key.trim().replace(/\s+/g, '_').replace(/[^a-zA-Z0-9_]/g, '').toLowerCase();
                sample[cleanKey] = typeof row[key] === 'string' ? row[key].trim() : row[key];
            }
            // Normalizar y validar coordenadas
            // En la mayoría de CSV españoles, X = longitud, Y = latitud
            let lonRaw = sample['coord_x'];
            let latRaw = sample['coord_y'];
            if (latRaw && lonRaw && latRaw !== 'NA' && lonRaw !== 'NA') {
                let latStr = String(latRaw).replace(/\s+/g, '');
                let lonStr = String(lonRaw).replace(/\s+/g, '');
                // Eliminar todos los puntos menos el último (el decimal)
                if ((latStr.match(/\./g) || []).length > 1) {
                    let parts = latStr.split('.');
                    latStr = parts.slice(0, -1).join('') + '.' + parts[parts.length - 1];
                }
                if ((lonStr.match(/\./g) || []).length > 1) {
                    let parts = lonStr.split('.');
                    lonStr = parts.slice(0, -1).join('') + '.' + parts[parts.length - 1];
                }
                // Permitir valores negativos
                let lat = parseFloat(latStr);
                let lon = parseFloat(lonStr);
                // Validar rango de coordenadas (latitud: -90 a 90, longitud: -180 a 180)
                if (!isNaN(lat) && !isNaN(lon) && lat > -90 && lat < 90 && lon > -180 && lon < 180) {
                    sample['lat'] = lat;
                    sample['lon'] = lon;
                    return sample;
                }
            }
            // Si no son válidas, descartar
            console.warn('[Asaja][DESCARTADO] Fila descartada por coordenadas inválidas:', row);
            return null;
        } catch (error) {
            console.error('Error procesando fila del CSV de Asaja:', error, row);
            return null;
        }
    }

    /**
     * Convierte las muestras a formato GeoJSON
     */
    async getSamplingGeoJSON() {
        try {
            const samples = await this.processSamplingData();
            
            return {
                type: 'FeatureCollection',
                features: samples.filter(sample => sample !== null)
            };
        } catch (error) {
            console.error('Error generando GeoJSON de muestras:', error);
            throw error;
        }
    }

    /**
     * Obtiene estadísticas de los datos de muestreo
     */
    async getSamplingStats() {
        try {
            const samples = await this.processSamplingData();
            const validSamples = samples.filter(sample => sample !== null);
            
            const samplingTypes = [...new Set(validSamples.map(s => s.properties.samplingType))];
            const dates = [...new Set(validSamples.map(s => s.properties.date))];
            
            return {
                totalSamples: validSamples.length,
                samplingTypes: samplingTypes,
                samplingDates: dates,
                dateRange: {
                    earliest: dates.sort()[0],
                    latest: dates.sort().reverse()[0]
                }
            };
        } catch (error) {
            console.error('Error obteniendo estadísticas de muestreo:', error);
            throw error;
        }
    }

    /**
     * Busca una muestra por código
     */
    async getSampleByCode(code) {
        try {
            const samples = await this.processSamplingData();
            return samples.find(sample => 
                sample && sample.properties.code === code
            );
        } catch (error) {
            throw error;
        }
    }
}

export default new SamplingDataService();
