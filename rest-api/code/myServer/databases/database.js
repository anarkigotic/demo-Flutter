const Sequelize = require('sequelize');
const sequelize = new Sequelize(
    'restFultter',//db name
    'root',//username
    'Histeria182',
    {        
        dialect: 'mysql',
        host: 'localhost',
        operatorsAliases: false,
        pool: {
            max: 5,
            min: 0,
            require: 30000,
            idle: 10000,            
        }
    }
);
const Op = Sequelize.Op;
module.exports = {
    sequelize,
    Op
}