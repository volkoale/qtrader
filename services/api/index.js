const express = require('express');
const app = express();
const PORT = 4000;

// Simple health endpoint
app.get('/healthz', (req, res) => res.json({ ok: true }));

// Example API endpoint
app.get('/api/hello', (req, res) => res.json({ msg: 'Hello from QTrader API' }));

app.listen(PORT, () => console.log(`API listening on ${PORT}`));
