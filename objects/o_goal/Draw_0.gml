draw_self();

if (instance_exists(o_player)) {
	if (distance_to_object(o_player) < 32 && drawTimer < 0) {
		draw_set_color(c_black);
		draw_text(x, y-32, "E");
	}
}