//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
Enter_event = keyboard_check_pressed(vk_space);

//move through menu
pos += down_key - up_key;
if (pos >= op_length) {pos = 0}
if (pos < 0) {pos = op_length-1}

//using the options
if Enter_event 
{

	switch(pos)
	{
		//this is start game
		case 0:
		room_goto_next();
		break;
	
		//settings
		case 1:
	
		break;
	
		//quit game
		case 2:
		game_end();
		break;
	
	
	}
}