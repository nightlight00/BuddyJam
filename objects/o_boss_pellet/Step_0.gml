/// @description 
lifetime--;
if (lifetime < 180) {
	speed += 0.05;
	speed = clamp(speed, 0, 3.5);
	if (lifetime <= 0) {
		instance_destroy();
	}
}
createDust(6, random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom));