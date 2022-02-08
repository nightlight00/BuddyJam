
if (lifetime mod 10 == 0) {
	
}
lifetime++;
if (!device_mouse_check_button(0, mb_left) || !instance_exists(o_player)) {
	instance_destroy();
}