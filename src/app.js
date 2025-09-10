import express from 'express';
import { connectMongo } from './loaders/mongoDB.js';
import configureExpress from './loaders/express.js';
import { errorHandler } from './middleware/errorHandler.js';

export default async function createApp() {
    // Connect to MongoDB
    await connectMongo();

    // Create and initialize the Express application
    const app = express();

    // Configure Express
    configureExpress(app);

    // Error handling middleware
    app.use(errorHandler);

    return app;
}