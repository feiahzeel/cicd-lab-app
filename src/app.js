const express = require('express');
const os = require('os');

const VERSION = '1.1.0';
const app = express();

app.get('/health', (req, res) => {
  res.status(200).json({ status: 'ok', version: VERSION });
});

app.get('/', (req, res) => {
  res.send(`<h1>cicd-lab v${VERSION}</h1><p>Servido por: ${os.hostname()}</p>`);
});

module.exports = app;
