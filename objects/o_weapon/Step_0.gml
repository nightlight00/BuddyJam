
if (!instance_exists(o_player)) {
	return; }
	
direction = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);
image_angle = direction;

if (current_cooldown <= 0)
{
	if (device_mouse_check_button_pressed(0, mb_left))
	{
		with (instance_create_layer(x, y, "Instances", o_projectile)) {
			direction = other.direction;
			image_angle = direction;
			speed = 3;
		}
		shakescreen(5, 1.4);
		
		current_cooldown = 24;
	}
}

current_cooldown--;