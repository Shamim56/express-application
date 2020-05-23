'use strict';

const express = require('express')

// constants
const PORT = 8081;
const HOST = '0.0.0.0';

// application
const app = express()
app.get('/test', (req, res) => {
    res.send('Hello World!')
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
