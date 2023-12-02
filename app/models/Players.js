
const { DataTypes, Model } = require('sequelize');
const sequelize = require('../db');


class Players extends Model{}


Players.init({
    name: DataTypes.STRING,
    age: DataTypes.STRING,
    position: DataTypes.STRING,
    nationality:DataTypes.STRING,
    description: DataTypes.STRING,
},
{
    sequelize,
    tableName: "players" 
})

module.exports = Players;