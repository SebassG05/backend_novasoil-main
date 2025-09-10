process.removeAllListeners('warning');
process.env.NODE_NO_WARNINGS = '1';

import createApp from './app.js';
import config from './config.js';
import logger from './utils/logger.js';

async function startServer() {
    try {
        const app = await createApp();
        const PORT = config.port;

        app.listen(PORT, () => {
            logger.info(`Server listening on port ${PORT}`);
            logger.info(`API URL: http://localhost:${PORT}`);
        });
    } catch (err) {
        logger.error('Fatal error starting the server', { error: err.message, stack: err.stack });
        process.exit(1);
    }
}

// Handle unhandled promise rejections
process.on('unhandledRejection', (reason, promise) => {
    logger.error('Unhandled Rejection', { reason: reason.toString(), stack: reason.stack });
});

// Handle uncaught exceptions
process.on('uncaughtException', (error) => {
    logger.error('Uncaught Exception', { error: error.message, stack: error.stack });
    process.exit(1);
});

startServer();