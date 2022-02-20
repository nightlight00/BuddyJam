playSound(snd_clink, 0.5, false, x, y, 0.8);
global.playerHealth += 3;
if (global.playerHealth > global.playerHealthMax) {
	global.playerHealth = global.playerHealthMax;
}
for (var i = 0; i < 7; i++) {
	createDust(3, random_range(o_player.bbox_left, o_player.bbox_right), random_range(o_player.bbox_top, o_player.bbox_bottom));
}
