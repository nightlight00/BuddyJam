image_alpha -= 0.017;
if (!keyboard_check(vk_shift)) {
	image_alpha -= 0.008;
}
if (image_alpha < 0) {
	instance_destroy();
}