
if (instance_exists(o_player))
{
	if (o_player.player_dead) {
		var xgoto = o_player.x - (view_width / 2);
		var ygoto = o_player.y - (view_height / 2);
	}
	else {
		var xgoto = ((o_player.x - view_width) + device_mouse_x(0)) / 2;
		var ygoto = ((o_player.y - view_height) + device_mouse_y(0)) / 2;
	}
	var xcur = camera_get_view_x(view_camera[0]);
	var ycur = camera_get_view_y(view_camera[0]);
	
	camera_set_view_pos(view_camera[0], lerp(xcur, xgoto, .0420), lerp(ycur, ygoto, .0420));
//	camera_set_view_pos(view_camera[0], round(camera_get_view_x(view_camera[0])), round(camera_get_view_y(view_camera[0])));

	if (screenshake_time > 0) 
	{
		var str = screenshake_magnitude * random_range(0.95, 1.05);
		var mag = choose(-str, str);
		
		camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + mag,  camera_get_view_y(view_camera[0]) + mag);
	}
}

screenshake_time--;