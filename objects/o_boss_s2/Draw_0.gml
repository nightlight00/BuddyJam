
// to give extra life to the boss
wiggle = sin(current_time / 400) * 1.5;
wiggle2 = sin(current_time / 150) * 1.5;

// draws each body segment
for (var i = 0; i < 11; i++) {
	var framekill = sin(current_time / 180 + (10 * i)) * 1.5, frame = 1;
	if (i == 1 || i == 10) {
		frame = 0; }
	draw_sprite_ext(sprite_index, frame, x + framekill, (y - 60) + (i * 6.5), (0.1 * image_xscale) * i, (0.1 * image_yscale) * i, 0, c_white, 1);
}
// adds an extra pair of arms when below 25% health, for extra fun attacks
if (hp < MaxHp / 4) {
	draw_sprite_ext(s_boss_stage2_arms, 0, x - wiggle, y + 32 - wiggle2, 1*image_xscale, -1*image_yscale, -wiggle2, c_white, 1);	
}
// draws arms
draw_sprite_ext(s_boss_stage2_arms, 0, x + wiggle, y + 32 + wiggle2, image_xscale, image_yscale, wiggle2, c_white, 1);	
// draws head
draw_sprite_ext(s_boss_stage2_head, 0, x + wiggle, y + 8 - wiggle2, image_xscale, image_yscale, 0, c_white, 1);

