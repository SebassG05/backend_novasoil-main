import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import csv from 'csv-parser';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

class SamplingDataService {
    constructor() {
        this.csvPath = path.join(__dirname, '../../Formatos de coordenadas/Sampling Tamarguillo Park.csv');
    }

    /**
     * Procesa el archivo CSV de datos de muestreo
     */
    async processSamplingData() {
        try {
            if (!fs.existsSync(this.csvPath)) {
                throw new Error('Archivo CSV de muestreo no encontrado');
            }

            const samples = [];
            
            return new Promise((resolve, reject) => {
                fs.createReadStream(this.csvPath)
                    .pipe(csv({ separator: ';' }))
                    .on('data', (row) => {
                        // Procesar cada fila del CSV
                        const sample = this.processSampleRow(row);
                        if (sample) {
                            samples.push(sample);
                        }
                    })
                    .on('end', () => {
                        console.log(`Procesadas ${samples.length} muestras de suelo`);
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
