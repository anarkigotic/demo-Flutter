'use stric'

var taskModel = require('../models/taskModel');


function getAll(req, res) {
    taskModel.find({}).then(task => {
        return res.json({
            ok: true,
            mensaje: 'tareas cargadas con exito',
            data: task
        })
    }).catch(err => {
        return res.status(500).json({
            ok: false,
            error: err
        });

    });
}


function createTask(req, res) {
    var body = req.body;
    var valores_validos = ['name','priority','description'];
    var task = {};
    for (let param in body) {
        if (valores_validos.includes(param)) {
            task[param] = body[param];
        }
    }
    var taskmodel = new taskModel(task);
    taskmodel.save().then(tsk => {
        return res.status(200).json({
            ok: true,
            mensaje: 'tarea creada con exito',
            data:tsk
        });
    }).catch(err => {
        return res.status(500).json({
            ok: false,
            error: err
        });
    });
}



module.exports = {
    getAll,
    createTask
}