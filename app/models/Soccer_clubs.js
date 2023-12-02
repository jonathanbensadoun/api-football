
const { DataTypes, Model } = require('sequelize');
const sequelize = require('../db');


class Soccer_clubs extends Model{}


Soccer_clubs.init({
    name: DataTypes.STRING,
    country: DataTypes.STRING,
    date_of_creation: DataTypes.DATE,
    championship_id : DataTypes.INTEGER
},
{
    sequelize,
    tableName: "soccer_clubs" 
})

module.exports = Soccer_clubs;