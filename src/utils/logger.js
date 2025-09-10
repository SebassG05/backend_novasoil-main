const logger = {
    info: (message, meta = {}) => {
        // Simplificar mostrando solo mensajes sin metadatos vacíos
        if (Object.keys(meta).length === 0) {
            console.log(`[INFO] ${message}`);
        } else {
            console.log(`[INFO] ${message}`, meta);
        }
    },
    error: (message, meta = {}) => {
        if (Object.keys(meta).length === 0) {
            console.error(`[ERROR] ${message}`);
        } else {
            console.error(`[ERROR] ${message}`, meta);
        }
    },
    warn: (message, meta = {}) => {
        if (Object.keys(meta).length === 0) {
            console.warn(`[WARN] ${message}`);
        } else {
            console.warn(`[WARN] ${message}`, meta);
        }
    },
    debug: (message, meta = {}) => {
        if (Object.keys(meta).length === 0) {
            console.debug(`[DEBUG] ${message}`);
        } else {
            console.debug(`[DEBUG] ${message}`, meta);
        }
    }
};

export default logger;