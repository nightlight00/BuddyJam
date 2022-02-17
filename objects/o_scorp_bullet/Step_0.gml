if distance_to_object(other) < 0
{
	instance_destroy();
}

createDust(1, x, y);
lifetime--;
if (lifetime <= 0) {
	instance_destroy();
}