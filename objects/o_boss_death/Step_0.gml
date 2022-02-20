
if (image_alpha == 0) {
	fadeout_timer++;
}

if ((fadeout_timer - 45) * 0.005 > 1.3) {
	room_goto(rm_end);
}
