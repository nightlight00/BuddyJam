lifetime--;
if (lifetime <= 0) {
	var l = instance_create_layer(x, y, "Player", o_laser_boss);
	l.image_angle = image_angle;
	l.direction = direction;
	l.image_xscale = image_xscale;
	instance_destroy();
}