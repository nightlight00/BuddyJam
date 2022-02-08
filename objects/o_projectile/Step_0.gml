image_angle = direction;
if (collision_point(x, y, o_wall, true, true)) || (penetrate == 0) || (lifetime <= 0) {
	instance_destroy(); }
lifetime--;
	