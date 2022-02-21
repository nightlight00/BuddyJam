
if (immune < 0 && hp > 0) {
	audio_sound_pitch(music, audio_sound_get_pitch(music) + 0.05);
	hp--;
	other.penetrate--;
	immune = 40;
	image_xscale += 0.2;
	image_yscale = image_xscale;
	for (var i = 0; i < 5; i++) {
		var pel = instance_create_layer(o_player.x + random_range(-128, 128), y - (64 + random(16)), "Instances", o_boss_pellet);
		pel.speed = 0.2;
		pel.direction = 270;
	}
}

if (hp <= 0) {
	// death
	if (sprite_index != s_spawn_fx) {
		sprite_index = s_spawn_fx;
		image_index = 0;
		image_xscale = 1;
		image_yscale = image_xscale;
	}
}