const { Championship } = require("../models");

const championshipController = {

    getAllChampionship: async (req, res) => {
        try {
            const data = await Championship.findAll();
            if(!data){
                res.status(404).json({message:'Erreur ce championnat n\'existe pas'});
            }
            res.status(200).json(data);
        } catch (error) {
            res.status(500).json({message : 'Erreur interne au serveur'})
        }        
    }
}

module.exports = championshipController;