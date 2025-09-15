import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import csv from 'csv-parser';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

class SamplingDataService {
    constructor() {
        this.csvPath = path.join(__dirname, '../../Formatos de coordenadas/Sampling Tamarguillo Park.csv');
        this.csvPathGermany = path.join(__dirname, '../../Formatos de coordenadas/Alemania.csv');
    }

    /**
     * Procesa el archivo CSV de datos de muestreo
     */
    async processSamplingData(csvType = 'tamarguillo') {
        try {
            const csvPath = csvType === 'germany' ? this.csvPathGermany : this.csvPath;
            if (!fs.existsSync(csvPath)) {
                throw new Error('Archivo CSV de muestreo no encontrado');
            }

            const samples = [];
            let separator = ';';
            let headers = undefined;
            if (csvType === 'germany') {
                separator = ',';
                headers = undefined; // Usar los del archivo
            }
            return new Promise((resolve, reject) => {
                fs.createReadStream(csvPath)
                    .pipe(csv({ separator, headers }))
                    .on('data', (row) => {
                        // Procesar cada fila del CSV
                        const sample = csvType === 'germany' ? this.processSampleRowGermany(row) : this.processSampleRow(row);
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
