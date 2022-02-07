
// enemy damage not implemented yet, add it later

// enemy level is stored in o_game
for (var i = 0; i < global.enemyLevel; i++) {
	maxhitpoints *= 1.8; }

hitpoints = maxhitpoints;
	

enemyDying = false;

//are we chasing the player?
alert = false;

//distance to start chasing the player
alert_dis = 100;