var c = c_black, hei = display_get_gui_height();
draw_rectangle_color(0, hei - 50, 150, hei, c, c, c, c, false);

draw_set_font(f_font);
draw_set_color(c_white);

draw_set_valign(fa_center);
draw_sprite_ext(s_guns, o_weapon.image_index, 100, hei - 25, 2, 2, 0, c_white, 1);

// health flashes when has immune frames
if (global.playerImmuneFrames < 0 || global.playerImmuneFrames mod 3 == 0) {
	draw_set_halign(fa_left);
	draw_text_transformed(10, hei - 25, string(clamp(round((100 / global.playerHealthMax) * global.playerHealth), 0, 100)) + "%", 2, 2, 0);
}

draw_set_valign(fa_top);