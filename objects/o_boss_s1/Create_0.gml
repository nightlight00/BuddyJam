/// @description 
spawnTimer = 0;
hp = 5;
immune = 0;

audio_stop_sound(Calyx_Level_Track);
music = audio_play_sound(Calyx_MiniFlower, 5, true);
audio_sound_gain(music, 0, 0);
audio_sound_gain(music, 1, 5000);