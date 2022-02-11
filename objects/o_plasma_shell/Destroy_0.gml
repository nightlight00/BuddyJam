for (var i = 0; i < 8; i++) {
	createDust(1, x + random_range(-7, 8), y + random_range(-7, 8), 2, random(360));
}
if (rocket) {
	instance_create_layer(x, y, "Instances", o_plasma_explosion);
}