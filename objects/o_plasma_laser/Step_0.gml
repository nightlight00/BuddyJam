
if (!device_mouse_check_button(0, mb_left) || !instance_exists(o_player) || o_weapon.current_weap != 0) {
	instance_destroy();
}
direction = point_direction(x, y, mouse_x, mouse_y);
x = o_player.x + lengthdir_x(2, direction); 
y = o_player.y - 4 + lengthdir_y(1, direction);
image_angle = direction;