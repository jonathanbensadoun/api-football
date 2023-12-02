const {Players} = require("../models");

const playersController = {

    getAllPlayers: async (req, res) => {
        try {
            const playersData = await Players.findAll();
            if(!playersData){
                res.status(404).json({message : 'Erreur il n\'y a pas de players'});
            }
            res.status(200).json(playersData);    
        } catch (error) {
            res.status(500).json({message:'Erreur interne au serveur'})
        }
    }
}

module.exports = playersController;