const express = require('express');
const { soccerClubsController, playersController, championshipController } = require('./controller');
const router = express.Router();

router.get("/clubs",soccerClubsController.getAllClubs);
router.get("/players",playersController.getAllPlayers);
router.get("/championships",championshipController.getAllChampionship);


module.exports = router;