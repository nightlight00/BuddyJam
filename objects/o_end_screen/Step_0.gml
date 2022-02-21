Fimage_alpha -= 0.01;

if (image_alpha < -0.25) {
	if (keyboard_check(vk_anykey)) {
		game_end();
	}
}