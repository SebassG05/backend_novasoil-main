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
    }

    /**
     * Procesa una fila individual del CSV de Madrid
     */

    processSampleRowMadrid(row) {
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
