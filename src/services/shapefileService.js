import shapefile from 'shapefile';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import proj4 from 'proj4';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

class ShapefileService {
    constructor() {}

    /**
     * Procesa el shapefile y convierte las coordenadas a WGS84
     */
    async processShapefile(area = 'tamarguillo') {
        try {
            let basePath;
            if (area === 'tamarguillo') {
                basePath = path.join(__dirname, '../../Formatos de coordenadas');
                var shapefilePath = path.join(basePath, 'tamarguillo.shp');
                var dbfPath = path.join(basePath, 'tamarguillo.dbf');
                var prjPath = path.join(basePath, 'tamarguillo.prj');
            } else if (area === 'madrid') {
                basePath = path.join(__dirname, '../../Formatos de coordenadas/MadridShape');
                var shapefilePath = path.join(basePath, 'rueda2.shp');
                var dbfPath = path.join(basePath, 'rueda2.dbf');
                var prjPath = path.join(basePath, 'rueda2.prj');
            } else {
                throw new Error('Área no soportada');
            }

            if (!fs.existsSync(shapefilePath)) {
                throw new Error('Shapefile no encontrado');
            }

            // Leer la proyección si existe
            let projection = null;
            if (fs.existsSync(prjPath)) {
                const prjContent = fs.readFileSync(prjPath, 'utf8');
                projection = prjContent.trim();
            }

            const features = [];
            // Verificar si existe el archivo .dbf
            const dbfExists = fs.existsSync(dbfPath);
            // Leer el shapefile
            if (dbfExists) {
                await shapefile.read(shapefilePath, dbfPath)
                    .then(collection => {
                        if (collection && collection.features) {
                            collection.features.forEach(feature => {
                                let geometry = feature.geometry;
                                // Convertir coordenadas si hay proyección
                                if (projection && geometry) {
                                    geometry = this.transformGeometry(geometry, projection);
                                }
                                features.push({
                                    type: 'Feature',
                                    geometry: geometry,
                                    properties: feature.properties || {}
                                });
                            });
                        }
                    });
            } else {
                // Leer solo el archivo .shp sin el .dbf
                console.warn('Archivo .dbf no encontrado, leyendo solo geometrías');
                await shapefile.read(shapefilePath)
                    .then(collection => {
                        if (collection && collection.features) {
                            collection.features.forEach(feature => {
                                let geometry = feature.geometry;
                                // Convertir coordenadas si hay proyección
                                if (projection && geometry) {
                                    geometry = this.transformGeometry(geometry, projection);
                                }
                                features.push({
                                    type: 'Feature',
                                    geometry: geometry,
                                    properties: {
                                        name: area === 'tamarguillo' ? 'Área de estudio Tamarguillo' : 'Área de estudio Madrid',
                                        description: area === 'tamarguillo' ? 'Límites del parque Tamarguillo' : 'Límites del recinto Madrid'
                                    }
                                });
                            });
                        }
                    });
            }

            // Si no hay features, crear un polígono de ejemplo para el área
            if (features.length === 0) {
                console.warn('No se pudieron leer geometrías del shapefile, creando área de ejemplo');
                features.push(this.createExampleArea(area));
            }

            return {
                type: 'FeatureCollection',
                features: features
            };
        } catch (error) {
            console.error('Error procesando shapefile:', error);
            // En caso de error, devolver un área de ejemplo
            console.log('Creando área de ejemplo debido al error');
            return {
                type: 'FeatureCollection',
                features: [this.createExampleArea(area)]
            };
        }
    }

    /**
     * Crea un área de ejemplo basada en las coordenadas de las muestras
     */
    createExampleArea(area = 'tamarguillo') {
        let coordinates, name, description;
        if (area === 'tamarguillo') {
            coordinates = [[
                [-5.925, 37.395],
                [-5.925, 37.420],
                [-5.900, 37.420],
                [-5.900, 37.395],
                [-5.925, 37.395]
            ]];
            name = 'Área de estudio Tamarguillo';
            description = 'Límites aproximados del parque Tamarguillo basados en puntos de muestreo';
        } else if (area === 'madrid') {
            // Coordenadas de ejemplo para Madrid (ajusta según tu recinto real)
            coordinates = [[
                [-3.703, 40.416],
                [-3.703, 40.420],
                [-3.698, 40.420],
                [-3.698, 40.416],
                [-3.703, 40.416]
            ]];
            name = 'Área de estudio Madrid';
            description = 'Límites aproximados del recinto Madrid basados en puntos de muestreo';
        } else {
            coordinates = [];
            name = 'Área de estudio';
            description = 'Área de ejemplo';
        }
        return {
            type: 'Feature',
            geometry: {
                type: 'Polygon',
                coordinates: coordinates
            },
            properties: {
                name,
                description,
                source: 'Generated from sampling points'
            }
        };
    }

    /**
     * Transforma la geometría de la proyección original a WGS84
     */
    transformGeometry(geometry, sourceProjection) {
        try {
            const wgs84 = '+proj=longlat +datum=WGS84 +no_defs';
            
            if (geometry.type === 'Point') {
                const [x, y] = proj4(sourceProjection, wgs84, geometry.coordinates);
                return {
                    ...geometry,
                    coordinates: [x, y]
                };
            } else if (geometry.type === 'Polygon') {
                const transformedCoordinates = geometry.coordinates.map(ring =>
                    ring.map(coord => proj4(sourceProjection, wgs84, coord))
                );
                return {
                    ...geometry,
                    coordinates: transformedCoordinates
                };
            } else if (geometry.type === 'MultiPolygon') {
                const transformedCoordinates = geometry.coordinates.map(polygon =>
                    polygon.map(ring =>
                        ring.map(coord => proj4(sourceProjection, wgs84, coord))
                    )
                );
                return {
                    ...geometry,
                    coordinates: transformedCoordinates
                };
            }
            
            return geometry;
        } catch (error) {
            console.error('Error transformando geometría:', error);
            return geometry;
        }
    }

    /**
     * Obtiene información básica del shapefile
     */
    async getShapefileInfo() {
        try {
            const geojson = await this.processShapefile();
            return {
                featureCount: geojson.features.length,
                geometryTypes: [...new Set(geojson.features.map(f => f.geometry?.type).filter(Boolean))],
                properties: geojson.features.length > 0 ? Object.keys(geojson.features[0].properties || {}) : []
            };
        } catch (error) {
            console.error('Error obteniendo información del shapefile:', error);
            throw error;
        }
    }
}

export default new ShapefileService();
