
//get inputs
up_key = keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
Enter_event = keyboard_check_pressed(vk_space)

//store number of options in current menu
op_length = array_length(option[menu_level]);

//move through menu
pos += down_key - up_key;
if (pos >= op_length) {pos = 0}
if (pos < 0) {pos = op_length-1}
if (lastpos != pos) {
	playSound(snd_menuclick, 0, false, x, y, 1, false);
	lastpos = pos;
}

// play select sound on enter event
if (Enter_event) {
	playSound(snd_menuselect, 0, false, x, y, 1, false);
}

//using the options
var _sml = menu_level;
switch(menu_level)
{
	//pause menu
	case 0:
	if (Enter_event) {
		switch(pos)
		{
			//this is start game
			case 0:	
			//closes pause menu
			instance_destroy();
			break;
				
			case 1:
			//settings
			menu_level = 1;
			break;
			
			case 2:
			//end game
			game_end();
			break;

				
			case 3:
			// go to main menu
			instance_destroy(o_game);
			instance_destroy(o_player);
			instance_destroy(o_weapon);
			instance_destroy(o_player_ui);
			room_goto(rm_Title_screen);	
			break;
				

		}
	}
	break;
		
	case 1:
	switch(pos)
	{
		//window Size
		case 0:
		if (Enter_event) {
			window_set_fullscreen(!window_get_fullscreen());
			if (window_get_fullscreen()) {
				option[1, 0] = "Window Size : Fullscreen";
			}
			else {
				option[1, 0] = "Window Size : Windowed";
			}
		}
		break;
			
		//Controls
		case 1:
		var decrease = keyboard_check(vk_left);
		var increase = keyboard_check(vk_right);
			
		var actual = decrease - increase;
		global.masterVolume -= (actual / 100);
		global.masterVolume = clamp(global.masterVolume, 0, 1);
			
		option[1, 1] = "Master Volume : " + string(round(global.masterVolume * 100)) + "%";
		audio_set_master_gain(0, global.masterVolume);
		//Change Controls code here
		break;
			
		//back
		case 2:
		if (Enter_event) {
			menu_level = 0;
		}
		break;
	}
	break;
}
if _sml != menu_level {pos = 0}
	
	//correct option length
op_length = array_length(option[menu_level]);



