import express from 'express';
import path from 'path';

const router = express.Router();

// Servir el archivo zip de Holanda de forma segura
router.get('/holanda-geojson', (req, res) => {
    const filePath = path.resolve('Formatos de coordenadas/holanda/CapaHolanda1.zip');
    res.download(filePath, 'CapaHolanda1.zip', (err) => {
        if (err) {
            res.status(404).json({ error: 'Archivo no encontrado' });
        }
    });
});

export default router;
