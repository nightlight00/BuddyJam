instance_deactivate_all(true);
audio_stop_all();
var mus = audio_play_sound(Calyx_Title_Theme, 5, true);
audio_sound_gain(mus, 0, 0);
audio_sound_gain(mus, 0.3, 10000);