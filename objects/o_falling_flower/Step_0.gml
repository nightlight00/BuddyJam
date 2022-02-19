/// @description 
lifetime--;
if (lifetime < 70) {
	if (lifetime <= 0) {
		instance_destroy();
	}
}

image_alpha += 5;
vspeed += 0.05;
vspeed = clamp(vspeed, 0, 5);

createDust(7, random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom));