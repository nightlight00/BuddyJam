
life_time--;
if (life_time <= 0) {
	instance_destroy();
}
for (var i = 0; i < 3; i++) {
	var ddist = random(200);
	createDust(6, x + random_range(-5, 6) + lengthdir_x(ddist, direction - 90), y + random_range(-5, 6) + lengthdir_y(ddist, direction - 90));
}