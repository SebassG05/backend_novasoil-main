import mongoose from 'mongoose';
import config from '../config.js';
import logger from '../utils/logger.js';

export const connectMongo = async () => {
    try {
        // Suprimir warnings
        mongoose.set('strictQuery', false);
        
        // Opciones simplificadas
        const options = {
            useNewUrlParser: true,
            useUnifiedTopology: true,
            // No usar useCreateIndex y useFindAndModify en mongoose >= 6
        };
        
        logger.info('Conectando a MongoDB...');
        
        // Usar directamente la URL sin mostrarla en logs
        await mongoose.connect(config.mongodbUri, options);
        
        logger.info(`MongoDB conectado correctamente a ${mongoose.connection.db.databaseName}`);
        
        return mongoose.connection;
    } catch (error) {
        logger.error('Error al conectar a MongoDB', { error: error.message });
        throw error;
    }
};