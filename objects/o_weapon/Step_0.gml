
if (!instance_exists(o_player)) {
	return; }
	
direction = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);
image_angle = direction;

if (current_cooldown <= 0)
{
	if ((weap_auto && device_mouse_check_button(0, mb_left)) || device_mouse_check_button_pressed(0, mb_left))
	{
		for (var i = 0; i < weap_amount; i++)
		{
			var proj = instance_create_layer(x, y, "Instances", weap_proj)
			proj.direction = direction + random_range(-weap_spread, weap_spread);
			proj.image_angle = direction;
			proj.speed = weap_velocity + random(i * (weap_velocity / 4));
		}
		shakescreen(5, 1.4);
		
		current_cooldown = weap_cooldown;
	}
}

current_cooldown--;
if (last_weap != current_weap) {
	swapWeap(current_weap);
	last_weap = current_weap;
}