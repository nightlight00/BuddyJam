if (instance_exists(o_goal)) {
	if (distance_to_object(o_goal) < 32 && o_goal.drawTimer < 0) {
		draw_set_color(c_yellow);
		draw_set_halign(fa_center);
		draw_text(x, y-48, "'E'move on to Lvl:" + string(o_goal.Current_lvl));
		draw_set_halign(fa_left);
	}
}
if (player_dead) {
	draw_self();
	// draw arm drooping down
	var dd = angle_difference(safe_dir, 270);
	safe_dir -= min(abs(dd), 10) * sign(dd);
	
	draw_sprite_ext(s_player_arm, 5, x + lengthdir_x(2, safe_dir), 
		y - 4 + lengthdir_y(1, safe_dir) + (image_index * 2), 1, image_xscale, safe_dir, c_white, 1);
	
	return; // stop normal draw
}

safe_dir = point_direction(x, y, mouse_x, mouse_y);
var drawn = false;
if (safe_dir >= 90 && safe_dir < 270) {
	image_xscale = -1; }
else {
	image_xscale = 1;
}

// player flashes when has immune frames
if (global.playerImmuneFrames < 0 || global.playerImmuneFrames mod 3 == 0) {
	// so player is behind arm
	if (safe_dir >= 180) {
		draw_self();
		drawn = true;
	}
	
	// draw weapon rotating
	if (instance_exists(o_weapon)) {
		if (o_weapon.weap_sprite != s_player_arm) {
			draw_sprite_ext(o_weapon.weap_sprite, draw_helper_index, x + lengthdir_x(2, safe_dir), 
			y - 4 + lengthdir_y(1, safe_dir), 1, image_xscale, safe_dir, c_white, 1);
		}
		
		draw_sprite_ext(o_weapon.sprite_index, o_weapon.image_index, x + lengthdir_x(2, safe_dir), 
		y - 4 + lengthdir_y(1, safe_dir), 1, image_xscale, safe_dir, c_white, 1);
	}
	
	// so player is above arm
	if (!drawn) {
		draw_self();
	}
}

if keyboard_check(ord("C")) {
	
	mp_grid_draw(global.mp_grid);
}
		