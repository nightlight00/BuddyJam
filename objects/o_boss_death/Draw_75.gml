
if (fadeout_timer > 45) {
	draw_sprite_ext(s_test, 0, 0, 0, display_get_gui_width() / 8, display_get_gui_height() / 8, 0, c_white, (fadeout_timer - 45) * 0.005)
}
