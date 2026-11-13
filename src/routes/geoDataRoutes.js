
import express from 'express';
import geoDataController from '../controllers/geoDataController.js';

const router = express.Router();

// Nuevos endpoints para los CSVs limpios de Tamarguillo

// Tamarguillo tablas
router.get('/sampling/tamarguillo-depth-0-25', geoDataController.getTamarguilloDepth0_25.bind(geoDataController));
router.get('/sampling/tamarguillo-depth-25-50', geoDataController.getTamarguilloDepth25_50.bind(geoDataController));
router.get('/sampling/tamarguillo3', geoDataController.getSamplingDataTamarguillo3.bind(geoDataController));
router.get('/sampling/estadisticos-topsoil', geoDataController.getEstadisticosTopsoil.bind(geoDataController));
router.get('/sampling/estadisticos-subsoil', geoDataController.getEstadisticosSubsoil.bind(geoDataController));

// Rutas para datos geoespaciales
// Ejemplo: /shapefile?area=madrid o /shapefile?area=tamarguillo
router.get('/shapefile', geoDataController.getShapefile.bind(geoDataController));
router.get('/shapefile/info', geoDataController.getShapefileInfo.bind(geoDataController));
router.get('/sampling', geoDataController.getSamplingData.bind(geoDataController));
router.get('/sampling/germany', geoDataController.getSamplingDataGermany.bind(geoDataController));
router.get('/sampling/bulgaria', geoDataController.getSamplingDataBulgaria.bind(geoDataController));
router.get('/sampling/estonia', geoDataController.getSamplingDataEstonia.bind(geoDataController));
router.get('/sampling/letonia', geoDataController.getSamplingDataLetonia.bind(geoDataController));
router.get('/sampling/madrid', geoDataController.getSamplingDataMadrid.bind(geoDataController));
router.get('/sampling/italy', geoDataController.getSamplingDataItaly.bind(geoDataController));
router.get('/sampling/italy-ciraa', geoDataController.getSamplingDataItalyCiraa.bind(geoDataController));
router.get('/sampling/italy-ciraa2', geoDataController.getSamplingDataItalyCiraa2.bind(geoDataController));
router.get('/sampling/italy-ciraa3', geoDataController.getSamplingDataItalyCiraa3.bind(geoDataController));
router.get('/sampling/asaja', geoDataController.getSamplingDataAsaja.bind(geoDataController));
router.get('/sampling/stats', geoDataController.getSamplingStats.bind(geoDataController));
router.get('/sampling/:code', geoDataController.getSampleByCode.bind(geoDataController));
router.get('/all', geoDataController.getAllGeoData.bind(geoDataController));

export default router;