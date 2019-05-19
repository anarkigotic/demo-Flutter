'use strict'
var express = require('express');
var bodyParser = require("body-parser");
var cors = require('cors');
var routeTask = require('./routes/TaskRouter');
var app = express();

// app.use(cors({ origin: true, credentials: true }))

app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
    res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
    next();
});


app.use(bodyParser.urlencoded({ limit: '50mb', extended: true, parameterLimit: 100000 }));
app.use(bodyParser.json({ limit: '50mb', extended: true, parameterLimit: 100000 }));



app.use('/todos', routeTask);

module.exports = app;