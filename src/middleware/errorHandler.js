import logger from '../utils/logger.js';

export const errorHandler = (err, req, res, next) => {
    logger.error('Error handler caught an error', {
        error: err.message,
        stack: err.stack
    });

    const statusCode = err.statusCode || 500;

    res.status(statusCode).json({
        status: 'error',
        statusCode,
        message: err.message || 'Internal Server Error'
    });
};