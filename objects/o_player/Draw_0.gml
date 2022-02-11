
var dir = point_direction(x, y, mouse_x, mouse_y), drawn = false;
if (dir >= 90 && dir < 270) {
	image_xscale = -1; }
else {
	image_xscale = 1;
}

// player flashes when has immune frames
if (global.playerImmuneFrames < 0 || global.playerImmuneFrames mod 3 == 0) {
	// so player is behind arm
	if (dir >= 180) {
		draw_self();
		drawn = true;
	}
	
	// draw weapon rotating
	if (instance_exists(o_weapon)) {
		if (o_weapon.weap_sprite != s_player_arm) {
			draw_sprite_ext(o_weapon.weap_sprite, draw_helper_index, x + lengthdir_x(2, dir), 
			y - 4 + lengthdir_y(1, dir), 1, image_xscale, dir, c_white, 1);
		}
		
		draw_sprite_ext(o_weapon.sprite_index, o_weapon.image_index, x + lengthdir_x(2, dir), 
		y - 4 + lengthdir_y(1, dir), 1, image_xscale, dir, c_white, 1);
	}
	
	// so player is above arm
	if (!drawn) {
		draw_self();
	}
}

if keyboard_check(ord("C")) {
	
	mp_grid_draw(global.mp_grid);
}
		