
immune--;

/// @description 
if (sprite_index == s_spawn_fx) {
	spawnTimer++;
	if (spawnTimer == 96) {
		// music
		audio_stop_sound(Calyx_Level_Track);
		var mus = audio_play_sound(Calyx_BossTheme, 1, true);
		audio_sound_gain(mus, 0, 0);
		audio_sound_gain(mus, 1, 10000);
		// spawn boss
		instance_create_layer(x, y-16, "Player", o_boss_s2);
	}
}
