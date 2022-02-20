
playSound(snd_wallbreak, 0, false, x, y, 0.7, true);
for (var i = 0; i < 5; i++) {
	createDust(9, random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom));
}
