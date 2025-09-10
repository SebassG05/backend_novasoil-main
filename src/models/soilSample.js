import mongoose from 'mongoose';

const soilSampleSchema = new mongoose.Schema({
    // Campos comunes
    sampleId: {
        type: String,
        required: true,
        unique: true
    },
    geometry: {
        type: {
            type: String,
            enum: ['Point', 'Polygon'],
            required: true
        },
        coordinates: {
            type: Array, // [longitude, latitude] para Point
            required: true
        }
    },
    // Campos específicos del CSV
    code: String,
    id: Number,
    date: Date,
    samplingType: String,
    lithologyDescription: String,
    observations: String,
    // Metadatos
    source: {
        type: String,
        enum: ['shapefile', 'csv'],
        required: true
    },
    createdAt: {
        type: Date,
        default: Date.now
    }
});

// Crear índice geoespacial
soilSampleSchema.index({ geometry: '2dsphere' }, { background: true });

const SoilSample = mongoose.model('SoilSample', soilSampleSchema);

export default SoilSample;