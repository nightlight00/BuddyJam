image_angle = direction;
if (collision_point(x, y, o_wall, true, true)) {
	instance_destroy(); }
if (penetrate == 0) {
	instance_destroy(); }