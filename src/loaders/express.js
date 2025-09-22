import express from 'express';
import cors from 'cors';
import logger from '../utils/logger.js';
import geoDataRoutes from '../routes/geoDataRoutes.js';
import holandaGeojsonRoutes from '../routes/holandaGeojsonRoutes.js';

export default function configureExpress(app) {
    // Log de todas las rutas disponibles (para diagnóstico)
    logger.info('Configurando Express...');
    
    // Middleware para CORS
    app.use(cors());

    // Middleware para parsear JSON
    app.use(express.json({ limit: '10mb' }));
    
    // Middleware para parsear URL-encoded
    app.use(express.urlencoded({ extended: true, limit: '10mb' }));
    
    // Middleware para logging de requests
    app.use((req, res, next) => {
        logger.info(`${req.method} ${req.url}`);
        next();
    });
    
    // Configurar rutas para datos geográficos - ASEGURARSE de que esto se registra
    logger.info('Registrando rutas de GeoData en /api/geo');
    app.use('/api/geo', geoDataRoutes);

    // Registrar ruta para servir el zip de Holanda
    logger.info('Registrando ruta de Holanda GeoJSON en /api/holanda');
    app.use('/api/holanda', holandaGeojsonRoutes);
    
    // Ruta raíz
    app.get('/', (req, res) => {
        res.json({
            message: 'API de Novasoil funcionando correctamente',
            version: '1.0.0'
        });
    });

    // Debug - listar todas las rutas registradas
    app._router && app._router.stack
        .filter(r => r.route)
        .forEach(r => {
            logger.info(`Route registered: ${Object.keys(r.route.methods).join(', ').toUpperCase()} ${r.route.path}`);
        });
    
    // Manejo de rutas no encontradas - DEBE IR AL FINAL
    app.use((req, res) => {
        logger.warn(`Ruta no encontrada: ${req.method} ${req.url}`);
        res.status(404).json({
            status: 'error',
            message: 'Ruta no encontrada'
        });
    });
    
    return app;
}