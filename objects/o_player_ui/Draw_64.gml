var c = c_black, hei = display_get_gui_height(), _wid = display_get_gui_width();
draw_rectangle_color(0, hei - 50, 180, hei, c, c, c, c, false);

draw_set_font(f_font);
draw_set_color(c_white);

draw_set_valign(fa_center);
draw_sprite_ext(s_guns, o_weapon.image_index, 140, hei - 25, 2, 2, 0, c_white, 1);

// health flashes when has immune frames
if (global.playerImmuneFrames < 0 || global.playerImmuneFrames mod 3 == 0) {
	draw_set_halign(fa_left);
	draw_text_transformed(10, hei - 25, string(clamp(round((100 / global.playerHealthMax) * global.playerHealth), 0, 100)) + "%", 2, 2, 0);
}

// draw boss health
if (instance_exists(o_boss_s2)) {
	draw_set_halign(fa_right);
	draw_text_transformed(_wid - 10, hei - 40, "enemy : " + string(clamp(round((100 / o_boss_s2.MaxHp) * o_boss_s2.hp), 0, 100)) + "%", 2, 2, 0);
	draw_healthbar(_wid - 10, hei - 20, _wid - 210, hei - 10, (o_boss_s2.hp / o_boss_s2.MaxHp) * 100, c_black, c_orange, c_aqua, 0, true, true);
}

draw_set_valign(fa_top);