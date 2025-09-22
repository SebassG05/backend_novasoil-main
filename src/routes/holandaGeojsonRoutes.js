
import express from 'express';
import path from 'path';
import fs from 'fs';
import yauzl from 'yauzl';

const router = express.Router();


// Servir el GeoJSON extraído del ZIP de Holanda

// Usar yauzl para manejar ZIPs grandes
router.get('/holanda-geojson', (req, res) => {
    const zipPath = path.resolve('Formatos de coordenadas/holanda/CapaHRepr.zip');
    console.log('[HolandaGeojson] Intentando abrir ZIP en:', zipPath);
    if (!fs.existsSync(zipPath)) {
        console.error('[HolandaGeojson] Archivo ZIP no encontrado:', zipPath);
        return res.status(404).json({ error: 'Archivo ZIP no encontrado', path: zipPath });
    }
    yauzl.open(zipPath, { lazyEntries: true }, (err, zipfile) => {
        if (err) {
            console.error('[HolandaGeojson] Error abriendo ZIP:', err.message);
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
                        console.error('[HolandaGeojson] Error abriendo stream:', err.message);
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
                console.error('[HolandaGeojson] No se encontró archivo .geojson en el ZIP');
                res.status(404).json({ error: 'Archivo .geojson no encontrado en el ZIP' });
            }
        });
    });
});

export default router;
