
if (trailPlayer) {
	if (distance_to_object(o_player) < 64)
	{
		move_towards_point(o_player.x, o_player.y, speed);
		speed += 0.3;
		speed = clamp(speed, 0, 3);
		if (distance_to_object(o_player) < 6)
		{
			instance_destroy(self);
		}
	}
}
else {
	if (distance_to_object(o_player) < 16 && (keyboard_check_pressed(ord("E")))) {
		instance_destroy(self);
	}
}

