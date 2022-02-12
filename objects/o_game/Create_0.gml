
randomise();

global.cellSize = 32;
global.mp_grid = 0;

global.masterVolume = 1;

//load in saved vari
if (file_exists("Savedgame.save"))
{
	var _buffer = buffer_load("Savedgame.save");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	while (array_length(_loadData) > 0)
	{
		var _saveEnemyLevel = array_pop(_loadData);
		global.enemyLevel =  _saveEnemyLevel + 1;
	}
	show_debug_message("game loaded" + _string);
}
else{global.enemyLevel = 1;}

	


instance_create_layer(x, y, "Instances", o_worldgen);
