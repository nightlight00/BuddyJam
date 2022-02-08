// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playSound(soundEffect, proirity, canLoop, volume = 1, canChangePitch = true){
	// add distance sound fall off later
	audio_falloff_set_model(audio_falloff_linear_distance_clamped);
	var snd = audio_play_sound_at(soundEffect, x, y, 0, 1, 128, 48, canLoop, proirity);
	audio_sound_gain(snd, volume, 0)
	if (canChangePitch) {
		audio_sound_pitch(snd, 1 + random_range(-0.1, 0.1));
	}
}