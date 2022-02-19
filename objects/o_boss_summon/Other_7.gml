if (sprite_index == s_explosion_spider) {
	for (var i = 0; i < 16; i++) {
		var dir = 22.5 * i;
		createDust(6, x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), 1, dir);
	}
	instance_create_layer(x, y, "Player", o_Spider_Enemy);
	instance_destroy();
}