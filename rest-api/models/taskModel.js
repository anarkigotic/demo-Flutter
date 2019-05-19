var mongoose = require('mongoose');
var Schema = mongoose.Schema;


var tareasSchema = new Schema({
    name :{
        type:String,
        required:[true,'El nombre es requerido']
    },
    priority : {
        type: Number,
        required:[true,'La priorida es requerida']
    },
    description:{
        type:String,
        required:[true,'La descripcion es requerida']
    },
    duedate:{
        type:Date,
        default:Date.now
    }

})


module.exports = mongoose.model("Tarea", tareasSchema);
