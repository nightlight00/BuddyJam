
if (image_alpha < 0.6) {
	image_alpha += 0.025;
}

//get inputs
up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
Enter_event = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"));

//store number of options in current menu
op_length = array_length(option[menu_level]);

//move through menu
pos += down_key - up_key;
if (pos >= op_length) {pos = 0}
if (pos < 0) {pos = op_length-1}

//using the options

if (Enter_event) {
	// deletes permanet objects
	instance_destroy(o_player);
	instance_destroy(o_weapon);
	instance_destroy(o_player_ui);
	switch(pos)
	{
		//this is start game
		case 0:	
		// resets enemy level
		if(file_exists("Savedgame.save"))
		{
			file_delete("Savedgame.save")
		}
		show_debug_message("Game was reset");
		// starts actual game
		room_goto(rm_arena1);	
		break;
				
		// return to main menu
		case 1:	
		instance_destroy(o_game);
		room_goto(rm_Title_screen);	
		break;
	}
}
		
/// @description 
