
if (o_player.player_dead) {
	speed = 0;
	return; }

if (trailPlayer) {
	if (distance_to_object(o_player) < 64 && global.playerHealth < global.playerHealthMax)
	{
		move_towards_point(o_player.x, o_player.y, speed);
		speed += 0.3;
		speed = clamp(speed, 0, 3);
		if (irandom(3) == 0) {
			createDust(3, x, y, random_range(0.2, 0.4), random(360), random_range(0.3, 0.5)); }
		if (distance_to_object(o_player) < 6)
		{
			for (var i = 0; i < 10; i++) {
				createDust(3, o_player.x, o_player.y, 0, random(360));
			}
			global.playerHealth += 4;
			if (global.playerHealth > global.playerHealthMax) {
				global.playerHealth = global.playerHealthMax; }
			instance_destroy(self);
		}
	}
	else {
		speed = 0;
	}
}
else {
	if (distance_to_object(o_player) < 16 && (keyboard_check_pressed(ord("E")))) {
		instance_destroy(self);
	}
}
