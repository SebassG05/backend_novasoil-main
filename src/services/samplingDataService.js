import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import csv from 'csv-parser';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

class SamplingDataService {

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
            // Solo devolver si ambos son números válidos
                if (typeof lat === 'number' && !isNaN(lat) && typeof lon === 'number' && !isNaN(lon)) {
                    sample['lat'] = lat;
                    sample['lon'] = lon;
                    // También rellenar los campos Latitude/Longitude para la tabla
                    sample['Latitude'] = lat;
                    sample['Longitude'] = lon;
                    return sample;
                } else {
                    let motivo = '';
                    if (!row['Latitude'] || !row['Longitude']) {
                        motivo = 'Faltan columnas Latitude o Longitude';
                    } else if (isNaN(lat) || isNaN(lon)) {
                        motivo = `No se pudo parsear Latitude/Longitude. Latitude: ${row['Latitude']}, Longitude: ${row['Longitude']}`;
                    }
                    console.warn('[Madrid][DESCARTADO] Fila descartada por coordenadas inválidas:', row, 'Motivo:', motivo);
                    return null;
                }
        } catch (error) {
            console.error('Error procesando fila del CSV de Madrid:', error, row);
            return null;
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
     * Procesa el archivo CSV de datos de muestreo
     */
    async processSamplingData(csvType = 'tamarguillo') {
        try {
            let csvPath, separator = ';', headers = undefined, rowProcessor = this.processSampleRow.bind(this);
            if (csvType === 'germany') {
                csvPath = this.csvPathGermany;
                separator = ',';
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
                        console.error('Error leyendo archivo CSV:', error);
                        reject(error);
                    });
            });
        } catch (error) {
            console.error('Error procesando datos de muestreo:', error);
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
                console.warn(`Coordenadas inválidas para la muestra ${row.code}`);
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
            console.error('Error buscando muestra por código:', error);
            throw error;
        }
    }
}

export default new SamplingDataService();
