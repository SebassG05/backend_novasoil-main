import express from 'express';
import path from 'path';
import fs from 'fs';
import yauzl from 'yauzl';

const router = express.Router();


// Servir el GeoJSON extraído del ZIP de Holanda

// Usar yauzl para manejar ZIPs grandes
router.get('/holanda-geojson', (req, res) => {
    const zipPath = path.resolve('Formatos de coordenadas/holanda/CapaHRepr.zip');
    if (!fs.existsSync(zipPath)) {
        return res.status(404).json({ error: 'Archivo ZIP no encontrado', path: zipPath });
    }
    yauzl.open(zipPath, { lazyEntries: true }, (err, zipfile) => {
        if (err) {
            return res.status(500).json({ error: 'Error abriendo ZIP', details: err.message });
        }
        let found = false;
        zipfile.readEntry();
        zipfile.on('entry', entry => {
            if (/\.geojson$/i.test(entry.fileName)) {
                found = true;
                // Solución sencilla: servir el archivo como stream directo
                res.setHeader('Content-Type', 'application/json');
                zipfile.openReadStream(entry, (err, readStream) => {
                    if (err) {
                        return res.status(500).json({ error: 'Error abriendo stream', details: err.message });
                    }
                    readStream.pipe(res);
                    readStream.on('end', () => {
                        zipfile.close();
                    });
                });
            } else {
                zipfile.readEntry();
            }
        });
        zipfile.on('end', () => {
            if (!found) {
                res.status(404).json({ error: 'Archivo .geojson no encontrado en el ZIP' });
            }
        });
    });
});

export default router;
