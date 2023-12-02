const {Soccer_clubs} = require("../models");

const soccerClubsController = {

    getAllClubs : async (req, res) => {
        try {
            const clubsData = await Soccer_clubs.findAll();
            console.log(clubsData);
            if(!clubsData){
                res.status(404).json({message : 'Erreur il n\'y à pas de club '});
            }
            res.status(200).json(clubsData);
        } catch (error) {
            res.status(500).json({message : 'Erreur interne au serveur'});
        }
        
    }
}

module.exports = soccerClubsController;