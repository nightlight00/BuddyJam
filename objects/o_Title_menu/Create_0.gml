
// music
audio_stop_all();
var mus = audio_play_sound(Calyx_Title_Theme, 4, true);
audio_sound_gain(mus, 0, 0);
audio_sound_gain(mus, 1, 10000);

width = 112;
height = 184;

//space between the font and border
op_border = 8;

//the space between each font
op_space = 32;

pos = 0;
lastpos = 0;

audio_listener_set_position(0, x, y, 0);
global.masterVolume = 1;

//pause menu
option[0, 0] = "Commence";
option[0, 1] = "Skip to boss : DEBUG";
option[0, 2] = "Settings";
option[0, 4] = "DEBUG : end";// has to be on itch page anyways
option[0, 3] = "Depart";

//settings menu
option[1, 0] = "Window Size : windowed";
option[1, 1] = "Master Volume : " + string(global.masterVolume * 100) + "%";
option[1, 2] = "Return";

//creator menu
option[2, 0] = "nightlight";
option[2, 1] = "Motion Dev / work";
option[2, 2] = "Mystro";
option[2, 3] = "band";
option[2, 4] = "Return";


op_length = 0;
menu_level = 0;