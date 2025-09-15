import express from 'express';
import geoDataController from '../controllers/geoDataController.js';

const router = express.Router();

// Rutas para datos geoespaciales
router.get('/shapefile', geoDataController.getShapefile.bind(geoDataController));
router.get('/shapefile/info', geoDataController.getShapefileInfo.bind(geoDataController));
router.get('/sampling', geoDataController.getSamplingData.bind(geoDataController));
router.get('/sampling/germany', geoDataController.getSamplingDataGermany.bind(geoDataController));
router.get('/sampling/stats', geoDataController.getSamplingStats.bind(geoDataController));
router.get('/sampling/:code', geoDataController.getSampleByCode.bind(geoDataController));
router.get('/all', geoDataController.getAllGeoData.bind(geoDataController));

export default router;