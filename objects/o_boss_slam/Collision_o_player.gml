/// @description 

if (image_index == 4) {
	if (global.playerImmuneFrames < 0) {
		global.playerHealth -= damage;
	
		global.playerImmuneFrames = global.playerImmuneFramesReset;
	}
	
	o_player.encumbered = true;
	if (o_player.encumber_timer > 0) {
		o_player.encumber_timer += 25; }
	else {
		o_player.encumber_timer = 45; }
		
	penetrate--;
	if (penetrate == 0) {
		instance_destroy(); }
	
}
