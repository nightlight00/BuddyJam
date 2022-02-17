/// @description 
lifetime--;
if (lifetime < 70) {
	speed += 0.05;
	speed = clamp(speed, 0, 4);
	if (lifetime <= 0) {
		instance_destroy();
	}
}