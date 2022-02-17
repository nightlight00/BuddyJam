if (sprite_index == s_explosion_spider) {
	instance_create_layer(x, y, "Player", o_Spider_Enemy);
	instance_destroy();
}