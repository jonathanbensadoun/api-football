
const { DataTypes, Model } = require('sequelize');
const sequelize = require('../db');


class Championship extends Model{}


Championship.init({
    name: DataTypes.STRING,
    
},
{
    sequelize,
    tableName: "championship" 
})

module.exports = Championship;