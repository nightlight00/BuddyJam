createDust(1, x, y);
lifetime--;
if (lifetime <= 0) {
	instance_destroy();
}