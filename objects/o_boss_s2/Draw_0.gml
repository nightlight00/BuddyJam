
// to give extra life to the boss
wiggle = sin(current_time / 400) * 1.5;
wiggle2 = sin(current_time / 150) * 1.5;

// draws each body segment
for (var i = 0; i < 11; i++) {
	var framekill = sin(current_time / 180 + (10 * i)) * 1.5, frame = s_boss_stage2_body2;
	if (i == 1 || i == 10) {
		frame = s_boss_stage2_body; }
	else if (i == 2) {
		draw_sprite_ext(s_boss_stage2_arms, image_index, x + wiggle, (y - 60) + (i * 6.5) + wiggle2, 0.2 * image_xscale, 0.2 * image_yscale, wiggle2, c_white, 1); }
	draw_sprite_ext(frame, image_index, x + framekill, (y - 60) + (i * 6.5), (0.1 * image_xscale) * i, (0.1 * image_yscale) * i, 0, c_white, 1);
}
// draws arms
draw_sprite_ext(arm_version, image_index, x + wiggle, y + 32 + wiggle2, image_xscale, image_yscale, wiggle2, c_white, 1);	
// draws head
draw_sprite_ext(s_boss_stage2_head, image_index, x + wiggle, y + 8 - wiggle2, image_xscale, image_yscale, 0, c_white, 1);

