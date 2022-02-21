// draw vines
if (!instance_exists(o_boss_s2)) {
	draw_sprite_ext(s_vinetile, 0, x, y-16, 1.45, 1, 0, c_white, 0.25);/// @description 
}

draw_self();