draw_self();

if (instance_exists(o_player)) {
	if (distance_to_object(o_player) < 32 && drawTimer < 0) {
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_text(x, y-48, "E");
		draw_set_halign(fa_left);
	}
}