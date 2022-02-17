

if (global.enemyLevel == 5) {
	var pd = point_direction(x, y, o_player.x, o_player.y);
	var dd = angle_difference(direction, pd);
	direction -= min(abs(dd), 0.1) * sign(dd);
	image_angle = direction
}

life_time--;
if (life_time <= 0) {
	instance_destroy();
}