//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
Enter_event = keyboard_check_pressed(vk_space);

//store number of options in current menu
op_length = array_length(option[menu_level]);

//move through menu
pos += down_key - up_key;
if (pos >= op_length) {pos = 0}
if (pos < 0) {pos = op_length-1}

//using the options
if Enter_event 
{
	var _sml = menu_level;
	switch(menu_level)
	{
		//pause menu
		case 0:
			switch(pos)
			{
				//this is start game
				case 0:	
				room_goto_next();	
				break;
				
				//settings
				case 1: 
				menu_level = 1;	
				break;
				
				//quit game
				case 2:	
				game_end();	
				break;
			}
		break;
		
		case 1:
		switch(pos)
		{
			//window Size
			case 0:
			//window resize code here
			break;
			
			//Reset Game
			case 1:
			if(file_exists("Savedgame.save"))
			{
				file_delete("Savedgame.save")
			}
			show_debug_message("Game was reset")
			break;
			
			//Controls
			case 2:
			//Change Controls code here
			break;
			
			//back
			case 3:
			menu_level = 0;
			break;
		}
		break;
	}
	if _sml != menu_level {pos = 0}
	
	//correct option length
op_length = array_length(option[menu_level]);
}


