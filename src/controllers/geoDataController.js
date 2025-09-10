import { processCSVData, processShapefile, getAllSamples } from '../services/geoDataService.js';
import logger from '../utils/logger.js';

export const importData = async (req, res, next) => {
    try {
        // Procesar los datos
        logger.info('Starting data import process');

        const csvResults = await processCSVData();
        const shapefileResults = await processShapefile();

        res.status(200).json({
            status: 'success',
            message: 'Data imported successfully',
            csvCount: csvResults.length,
            shapefileCount: shapefileResults.length
        });
    } catch (error) {
        next(error);
    }
};

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