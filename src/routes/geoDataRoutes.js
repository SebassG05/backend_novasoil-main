import { Router } from 'express';
import { importData, getSamples } from '../controllers/geoDataController.js';

const router = Router();

router.post('/import', importData);
router.get('/samples', getSamples);

export default router;