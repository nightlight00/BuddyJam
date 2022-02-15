other.penetrate -= 1;
for (var i = 0; i < 14; i++) {
	createDust(5, x + random_range(-8, 9), y + random_range(-8, 9));
}
instance_destroy();