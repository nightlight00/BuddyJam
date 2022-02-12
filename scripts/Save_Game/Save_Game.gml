
function Save_Game(){
	//make save array
	var _savedata = array_create(0);
	
	//for every instance create a struct and add it to the array
	
		var _saveEnemyLevel = global.enemyLevel;
		array_push(_savedata, _saveEnemyLevel);




	//turn all this data into a json string and save it via a buffer
	var _string = json_stringify(_savedata);
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "Savedgame.save");
	buffer_delete(_buffer);

	show_debug_message("game saved" + _string);
}