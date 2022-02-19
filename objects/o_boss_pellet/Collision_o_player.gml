
if (global.playerImmuneFrames < 0) {
	global.playerHealth -= damage;
	
	global.playerImmuneFrames = global.playerImmuneFramesReset / 3;
	
	o_player.poison = true;
	if (o_player.poison_timer > 0) {
		o_player.poison_timer += 25; }
	else {
		o_player.poison_timer = 45; }
}

penetrate--;
if (penetrate == 0) {
	instance_destroy(); }