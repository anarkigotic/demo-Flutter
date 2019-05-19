'use stric'
var express = require('express');
var taskController = require('../controllers/taskController');

var api = express.Router();


api.get('', taskController.getAll);
api.post('', taskController.createTask);


module.exports = api;