
width = 40;
height = 50;

//space between the font and border
op_border = 2;

//the space between each font
op_space = 15;

pos = 0;
lastpos = 0;

audio_listener_set_position(0, x, y, 0);

//pause menu
option[0, 0] = "Close Menu";
option[0, 1] = "Settings";
option[0, 2] = "DEBUG : end"; // has to be on itch page anyways
option[0, 3] = "Return to Main Menu";

//settings menu
option[1, 0] = "Window Size : windowed";
option[1, 1] = "Master Volume : " + string(global.masterVolume * 100) + "%";
option[1, 2] = "Return";

op_length = 0;
menu_level = 0;

