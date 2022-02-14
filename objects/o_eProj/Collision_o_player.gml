
if (global.playerImmuneFrames < 0) {
	global.playerHealth -= damage;
	
	global.playerImmuneFrames = global.playerImmuneFramesReset;
}

penetrate--;
if (penetrate == 0) {
	instance_destroy(); }