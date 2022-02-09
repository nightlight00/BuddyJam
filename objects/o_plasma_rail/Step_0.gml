
if (!device_mouse_check_button(0, mb_left) || !instance_exists(o_player) || o_weapon.current_weap != 3) {
	instance_destroy();
}


lifetime++;
if (lifetime >= 45) {
	if (lifetime == 45) {
		shakescreen(8, 3);
	}
	image_xscale = 18;
	image_yscale = 1.5;
	image_alpha -= 0.02;
	if (image_alpha < 0.1) {
		instance_destroy(); }
}
else 
{
	direction = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);
	image_angle = direction;
	x = o_player.x + lengthdir_x(6, direction); 
	y = o_player.y - 7 + lengthdir_y(3, direction);
	for (var i = 0; i < 3; i++) {
		createDust(1, x+lengthdir_x(12, direction), y+lengthdir_y(12, direction), random_range(0.8, 1.2), random(360));
	}
}

for (var i = 0; i < 3; i++) 
{
	var ddist = random(100);
	createDust(1, x+lengthdir_x(ddist, direction), y+lengthdir_y(ddist, direction), random_range(2.2, 4.4), direction);

	//for (var d = 0; d < 3; d++) {
	//	createDust(1, x, y, random_range(2, 3.2), direction+random_range(-14, 14), random_range(0.9, 1.3));
	//}
}

