import shapefileService from '../services/shapefileService.js';
import samplingDataService from '../services/samplingDataService.js';
import logger from '../utils/logger.js';

export class GeoDataController {
    /**
     * Obtiene los datos de muestreo de Alemania
     */
    async getSamplingDataGermany(req, res) {
        try {
            let samples = await samplingDataService.processSamplingData('germany');
            // Limpiar claves y normalizar formato para frontend
            samples = samples.map(row => {
                const cleanRow = {};
                Object.keys(row).forEach(k => {
                    // Eliminar espacios y caracteres raros de las claves
                    const cleanKey = k.replace(/\s+/g, '_').replace(/[^a-zA-Z0-9_]/g, '').toLowerCase();
                    cleanRow[cleanKey] = row[k];
                });
                return cleanRow;
            });
            res.json({
                success: true,
                data: samples,
                message: 'Datos de muestreo de Alemania procesados correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos de muestreo de Alemania:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando datos de muestreo de Alemania',
                error: error.message
            });
        }
    }

    async getSamplingDataMadrid(req, res) {
        try {
            let samples = await samplingDataService.processSamplingData('madrid');
            // Para Madrid, devolver las claves tal cual vienen del CSV (mayúsculas incluidas)
            res.json({
                success: true,
                data: samples,
                message: 'Datos de muestreo de Madrid procesados correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos de muestreo de Madrid:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando datos de muestreo de Madrid',
                error: error.message
            });
        }
    }

    async getSamplingDataLetonia(req, res) {
        try {
            let samples = await samplingDataService.processSamplingData('letonia');
            // Limpiar claves y normalizar formato para frontend
            samples = samples.map(row => {
                const cleanRow = {};
                Object.keys(row).forEach(k => {
                    // Eliminar espacios y caracteres raros de las claves
                    const cleanKey = k.replace(/\s+/g, '_').replace(/[^a-zA-Z0-9_]/g, '').toLowerCase();
                    cleanRow[cleanKey] = row[k];
                });
                return cleanRow;
            });
            res.json({
                success: true,
                data: samples,
                message: 'Datos de muestreo de Letonia procesados correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos de muestreo de Letonia:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando datos de muestreo de Letonia',
                error: error.message
            });
        }
    }

        async getSamplingDataEstonia(req, res) {
        try {
            let samples = await samplingDataService.processSamplingData('estonia');
            // Para Estonia, mantener las claves originales del CSV para preservar la estructura completa
            // No normalizar las claves como se hace con otros países
            res.json({
                success: true,
                data: samples,
                message: 'Datos de muestreo de Estonia procesados correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos de muestreo de Estonia:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando datos de muestreo de Estonia',
                error: error.message
            });
        }
    }


    async getSamplingDataBulgaria(req, res) {
        try {
            let samples = await samplingDataService.processSamplingData('bulgaria');
            // Limpiar claves y normalizar formato para frontend
            samples = samples.map(row => {
                const cleanRow = {};
                Object.keys(row).forEach(k => {
                    // Eliminar espacios y caracteres raros de las claves
                    const cleanKey = k.replace(/\s+/g, '_').replace(/[^a-zA-Z0-9_]/g, '').toLowerCase();
                    cleanRow[cleanKey] = row[k];
                });
                return cleanRow;
            });
            res.json({
                success: true,
                data: samples,
                message: 'Datos de muestreo de Bulgaria procesados correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos de muestreo de Bulgaria:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando datos de muestreo de Bulgaria',
                error: error.message
            });
        }
    }

    async getSamplingDataItaly(req, res) {
        try {
            let samples = await samplingDataService.processSamplingData('italy');
            // Para Italia, mantener las claves originales como Madrid
            res.json({
                success: true,
                data: samples,
                message: 'Datos de muestreo de Italia procesados correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos de muestreo de Italia:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando datos de muestreo de Italia',
                error: error.message
            });
        }
    }

    async getSamplingDataItalyCiraa(req, res) {
        try {
            let samples = await samplingDataService.processSamplingData('italy-ciraa');
            // Para Italia CIRAA, mantener las claves originales
            res.json({
                success: true,
                data: samples,
                message: 'Datos de muestreo de Italia CIRAA procesados correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos de muestreo de Italia CIRAA:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando datos de muestreo de Italia CIRAA',
                error: error.message
            });
        }
    }

    async getSamplingDataItalyCiraa2(req, res) {
        try {
            let samples = await samplingDataService.processSamplingData('italy-ciraa2');
            res.json({
                success: true,
                data: samples,
                message: 'Datos de muestreo de Italia CIRAA2 (Tillage Systems) procesados correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos de muestreo de Italia CIRAA2:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando datos de muestreo de Italia CIRAA2',
                error: error.message
            });
        }
    }

    async getSamplingDataItalyCiraa3(req, res) {
        try {
            let samples = await samplingDataService.processSamplingData('italy-ciraa3');
            res.json({
                success: true,
                data: samples,
                message: 'Datos de muestreo de Italia CIRAA3 (MASCOT) procesados correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos de muestreo de Italia CIRAA3:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando datos de muestreo de Italia CIRAA3',
                error: error.message
            });
        }
    }

    /**
     * Obtiene el shapefile procesado en formato GeoJSON
     */
    async getShapefile(req, res) {
        try {
            const area = req.query.area || 'tamarguillo';
            logger.info(`Procesando shapefile para área: ${area}`);
            const geojson = await shapefileService.processShapefile(area);
            res.json({
                success: true,
                data: geojson,
                message: `Shapefile procesado correctamente para área: ${area}`
            });
        } catch (error) {
            logger.error('Error obteniendo shapefile:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando shapefile',
                error: error.message
            });
        }
    }

    /**
     * Obtiene información básica del shapefile
     */
    async getShapefileInfo(req, res) {
        try {
            const info = await shapefileService.getShapefileInfo();
            
            res.json({
                success: true,
                data: info,
                message: 'Información del shapefile obtenida correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo información del shapefile:', error);
            res.status(500).json({
                success: false,
                message: 'Error obteniendo información del shapefile',
                error: error.message
            });
        }
    }

    /**
     * Obtiene los datos de muestreo en formato GeoJSON
     */
    async getSamplingData(req, res) {
        try {
            logger.info('Procesando datos de muestreo...');
            const geojson = await samplingDataService.getSamplingGeoJSON();
            
            res.json({
                success: true,
                data: geojson,
                message: 'Datos de muestreo procesados correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos de muestreo:', error);
            res.status(500).json({
                success: false,
                message: 'Error procesando datos de muestreo',
                error: error.message
            });
        }
    }

    /**
     * Obtiene estadísticas de los datos de muestreo
     */
    async getSamplingStats(req, res) {
        try {
            const stats = await samplingDataService.getSamplingStats();
            
            res.json({
                success: true,
                data: stats,
                message: 'Estadísticas de muestreo obtenidas correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo estadísticas de muestreo:', error);
            res.status(500).json({
                success: false,
                message: 'Error obteniendo estadísticas de muestreo',
                error: error.message
            });
        }
    }

    /**
     * Obtiene una muestra específica por código
     */
    async getSampleByCode(req, res) {
        try {
            const { code } = req.params;
            
            if (!code) {
                return res.status(400).json({
                    success: false,
                    message: 'Código de muestra requerido'
                });
            }

            const sample = await samplingDataService.getSampleByCode(code);
            
            if (!sample) {
                return res.status(404).json({
                    success: false,
                    message: 'Muestra no encontrada'
                });
            }

            res.json({
                success: true,
                data: sample,
                message: 'Muestra encontrada correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo muestra por código:', error);
            res.status(500).json({
                success: false,
                message: 'Error obteniendo muestra',
                error: error.message
            });
        }
    }

    /**
     * Obtiene todos los datos geoespaciales (shapefile + muestras)
     */
    async getAllGeoData(req, res) {
        try {
            logger.info('Obteniendo todos los datos geoespaciales...');
            
            const [shapefile, samplingData] = await Promise.all([
                shapefileService.processShapefile(),
                samplingDataService.getSamplingGeoJSON()
            ]);

            res.json({
                success: true,
                data: {
                    shapefile: shapefile,
                    samplingData: samplingData
                },
                message: 'Datos geoespaciales obtenidos correctamente'
            });
        } catch (error) {
            logger.error('Error obteniendo datos geoespaciales:', error);
            res.status(500).json({
                success: false,
                message: 'Error obteniendo datos geoespaciales',
                error: error.message
            });
        }
    }
}

const geoDataController = new GeoDataController();
export default geoDataController;

export const getSamples = async (req, res, next) => {
    try {
        logger.info('Request received for fetching all samples');

        const samples = await getAllSamples();

        if (!samples || samples.length === 0) {
            logger.warn('No samples found in database');
            return res.status(200).json({
                status: 'success',
                count: 0,
                message: 'No samples found in database',
                data: []
            });
        }

        logger.info(`Returning ${samples.length} samples`);

        res.status(200).json({
            status: 'success',
            count: samples.length,
            data: samples
        });
    } catch (error) {
        logger.error('Error in getSamples controller', { error: error.message });
        next(error);
    }
};