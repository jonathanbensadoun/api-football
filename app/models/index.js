const Championship = require("./Championship");
const Players = require("./Players");
const Soccer_clubs = require("./Soccer_clubs");


Soccer_clubs.belongsTo(Championship, {
    foreignKey: "championship_id", 
    as : "championships" 
});

Championship.hasMany(Soccer_clubs, {
    foreignKey: "championship_id",
    as: "soccer_club" 
});

Players.hasMany(Soccer_clubs,{
    foreignKey: "club_id",
    as: "soccer_clubs",
});

Soccer_clubs.belongsTo(Players,{
    foreignKey: "club_id",
    as: "player"
});
module.exports ={Championship ,Players ,Soccer_clubs};