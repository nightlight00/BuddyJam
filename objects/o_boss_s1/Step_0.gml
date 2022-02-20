
/// @description 
if (sprite_index == s_spawn_fx) {
	spawnTimer++;
	if (spawnTimer == 96) {
		// spawn boss
		instance_create_layer(x, y-16, "Player", o_boss_s2);
	}
}
