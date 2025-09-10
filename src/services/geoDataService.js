import fs from 'fs';
import path from 'path';
import csv from 'csv-parser';
import shapefile from 'shapefile';
import mongoose from 'mongoose';
import SoilSample from '../models/soilSample.js';
import logger from '../utils/logger.js';
import proj4 from 'proj4';

// Definir las proyecciones
const epsg3857 = '+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext +no_defs';
const epsg4326 = '+proj=longlat +datum=WGS84 +no_defs';

// Función para convertir coordenadas de Web Mercator a WGS84
function convertWebMercatorToWGS84(x, y) {
    return proj4(epsg3857, epsg4326, [x, y]);
}

// Función para convertir una geometría completa
function convertGeometry(geometry) {
    if (!geometry || !geometry.coordinates) return geometry;

    if (geometry.type === 'Point') {
        return {
            type: 'Point',
            coordinates: convertWebMercatorToWGS84(geometry.coordinates[0], geometry.coordinates[1])
        };
    } else if (geometry.type === 'Polygon') {
        const convertedRings = geometry.coordinates.map(ring =>
            ring.map(coord => convertWebMercatorToWGS84(coord[0], coord[1]))
        );
        return {
            type: 'Polygon',
            coordinates: convertedRings
        };
    }

    return geometry;
}

export const processCSVData = async () => {
    const results = [];
    const csvPath = path.join(process.cwd(), 'Formatos de coordenadas', 'Sampling Tamarguillo Park.csv');

    return new Promise((resolve, reject) => {
        fs.createReadStream(csvPath)
            .pipe(csv({
                separator: ';',
                headers: ['code', 'id', 'X_WG84', 'Y_WG84', 'Date', 'Sampling type', 'Lithology description', 'Observations'],
                skipLines: 1  // Saltar la primera línea (encabezados)
            }))
            .on('data', (data) => {
                logger.debug('CSV row:', data);
                results.push(data);
            })
            .on('end', async () => {
                try {
                    logger.info(`Processed ${results.length} CSV records`);

                    if (results.length === 0) {
                        logger.warn('No CSV records found');
                        return resolve([]);
                    }

                    // Log first row as sample
                    logger.info('Sample CSV record:', results[0]);

                    // Transformar y guardar en MongoDB - con mejor manejo de errores
                    const samples = results.map(item => {
                        // Validar que tenemos un código
                        if (!item.code) {
                            logger.warn('CSV record missing code:', item);
                        }

                        // Manejo seguro de fechas
                        let parsedDate = null;
                        if (item.Date) {
                            try {
                                // Verificar que tenemos el formato correcto DD/MM/YYYY
                                const dateParts = item.Date.trim().split('/');
                                if (dateParts.length === 3) {
                                    const day = parseInt(dateParts[0], 10);
                                    const month = parseInt(dateParts[1], 10) - 1; // Months are 0-indexed in JS
                                    const year = parseInt(dateParts[2], 10);

                                    if (!isNaN(day) && !isNaN(month) && !isNaN(year)) {
                                        parsedDate = new Date(year, month, day);
                                        // Verificar que la fecha es válida
                                        if (isNaN(parsedDate.getTime())) {
                                            logger.warn(`Invalid date format for record: ${item.code}, date: ${item.Date}`);
                                            parsedDate = null;
                                        }
                                    }
                                } else {
                                    logger.warn(`Unexpected date format for record: ${item.code}, date: ${item.Date}`);
                                }
                            } catch (dateError) {
                                logger.error(`Error parsing date for record: ${item.code}`, { error: dateError.message });
                            }
                        }

                        return {
                            sampleId: item.code || `CSV_${Math.random().toString(36).substr(2, 9)}`,
                            geometry: {
                                type: 'Point',
                                coordinates: [
                                    parseFloat(item.X_WG84) || 0,
                                    parseFloat(item.Y_WG84) || 0
                                ]
                            },
                            code: item.code || null,
                            id: parseInt(item.id) || null,
                            date: parsedDate,
                            samplingType: item['Sampling type'] || null,
                            lithologyDescription: item['Lithology description'] || null,
                            observations: item.Observations || null,
                            source: 'csv'
                        };
                    });

                    // Usar bulkWrite para mayor eficiencia
                    const operations = samples.map(sample => ({
                        updateOne: {
                            filter: { sampleId: sample.sampleId },
                            update: { $set: sample },
                            upsert: true
                        }
                    }));

                    if (operations.length > 0) {
                        const result = await SoilSample.bulkWrite(operations);
                        logger.info(`CSV data imported: ${result.upsertedCount} inserted, ${result.modifiedCount} updated`);
                    }

                    resolve(samples);
                } catch (error) {
                    logger.error('Error processing CSV data', { error: error.message });
                    reject(error);
                }
            })
            .on('error', (error) => {
                logger.error('Error reading CSV file', { error: error.message });
                reject(error);
            });
    });
};

export const processShapefile = async () => {
    try {
        const shapefilePath = path.join(process.cwd(), 'Formatos de coordenadas', 'tamarguillo.shp');
        logger.info(`Processing shapefile: ${shapefilePath}`);

        // Verificar que el archivo existe
        if (!fs.existsSync(shapefilePath)) {
            logger.error(`Shapefile not found at: ${shapefilePath}`);
            return [];
        }

        const source = await shapefile.open(shapefilePath);
        const features = [];

        // Modificar esta parte para manejar correctamente el fin del archivo
        let result;
        while (!(result = await source.read()).done) {
            const feature = result.value;
            logger.debug('Read feature from shapefile');

            // Log de la estructura del feature para diagnóstico
            logger.debug(`Feature structure: ${JSON.stringify(feature).substring(0, 200)}...`);

            features.push(feature);
        }

        logger.info(`Processed ${features.length} shapefile features`);

        if (features.length === 0) {
            logger.warn('No features found in shapefile');
            return [];
        }

        // Transformación con validaciones robustas
        const samples = features.map((feature, index) => {
            // Verificar que feature y sus propiedades existen
            if (!feature || !feature.properties) {
                logger.warn(`Invalid feature at index ${index}, missing properties`);
                return null;
            }

            if (!feature.geometry) {
                logger.warn(`Feature at index ${index} has no geometry`);
                return null;
            }

            // Determinar el tipo de geometría con verificación
            const geometryType = feature.geometry.type || 'Unknown';

            try {
                // Aquí está el cambio principal: convertir la geometría
                const convertedGeometry = convertGeometry(feature.geometry);

                return {
                    sampleId: `SHAPE_${index + 1}`,
                    geometry: { // Usar el objeto convertedGeometry en lugar de la variable 'geometry' que no existe
                        type: geometryType === 'Unknown' ? 'Point' : geometryType,
                        coordinates: convertedGeometry.coordinates
                    },
                    ...(feature.properties && { properties: feature.properties }),
                    source: 'shapefile'
                };
            } catch (geomError) {
                logger.error(`Error processing geometry for feature ${index}`, { error: geomError.message });
                return null;
            }
        }).filter(sample => sample !== null);

        if (samples.length === 0) {
            logger.warn('No valid samples could be created from shapefile features');
            return [];
        }

        // Usar bulkWrite para mayor eficiencia
        try {
            const operations = samples.map(sample => ({
                updateOne: {
                    filter: { sampleId: sample.sampleId },
                    update: { $set: sample },
                    upsert: true
                }
            }));

            if (operations.length > 0) {
                const result = await SoilSample.bulkWrite(operations);
                logger.info(`Shapefile data imported: ${result.upsertedCount} inserted, ${result.modifiedCount} updated`);
            }
        } catch (dbError) {
            logger.error('Database error while importing shapefile data', { error: dbError.message });
        }

        return samples;
    } catch (error) {
        logger.error('Error processing shapefile', { error: error.message, stack: error.stack });
        return []; // Devolver array vacío en lugar de lanzar error
    }
};

export const getAllSamples = async () => {
    try {
        logger.info('Fetching all soil samples from database...');

        // Verificar conexión a mongoose
        if (!mongoose.connection || mongoose.connection.readyState !== 1) {
            logger.error('MongoDB connection not established');
            return [];
        }

        // Comprobar el nombre real de la colección
        const collectionsList = await mongoose.connection.db.listCollections().toArray();
        logger.info(`Available collections: ${collectionsList.map(c => c.name).join(', ')}`);

        // Comprobar si la colección existe
        const soilSamplesCollection = collectionsList.find(c =>
            c.name.toLowerCase() === 'soilsamples' ||
            c.name.toLowerCase() === 'soilsample' ||
            c.name.toLowerCase() === 'soil_samples'
        );

        if (!soilSamplesCollection) {
            logger.warn('No soil samples collection found in database');
            return [];
        }

        logger.info(`Using collection: ${soilSamplesCollection.name}`);

        // Obtener recuento
        const count = await SoilSample.countDocuments();
        logger.info(`Found ${count} soil samples in database`);

        // Obtener todos los documentos
        const samples = await SoilSample.find({}).lean();
        logger.info(`Successfully retrieved ${samples.length} soil samples`);

        // Mostrar ejemplo del primer documento
        if (samples.length > 0) {
            logger.info('Sample document:', {
                sample: JSON.stringify(samples[0]).substring(0, 200) + '...'
            });
        }

        return samples;
    } catch (error) {
        logger.error('Error getting soil samples', { error: error.message, stack: error.stack });
        return []; // Devolver array vacío en lugar de lanzar error
    }
};