
if (!device_mouse_check_button(0, mb_left) || !instance_exists(o_player) || o_weapon.current_weap != 0) {
	instance_destroy();
}
direction = point_direction(x, y, mouse_x, mouse_y);
x = o_player.x + lengthdir_x(6, direction); 
y = o_player.y - 4 + lengthdir_y(3, direction);
image_angle = direction;

for (var i = 0; i < 3; i++) 
{
	var ddist = random(100);
	createDust(1, x+lengthdir_x(ddist, direction), y+lengthdir_y(ddist, direction), random_range(1, 3), direction);

	//for (var d = 0; d < 3; d++) {
	//	createDust(1, x, y, random_range(2, 3.2), direction+random_range(-14, 14), random_range(0.9, 1.3));
	//}
}

