
function Check_For_Player(){
	//check if the player is close enough to start chasing
	var _dis = distance_to_object(o_player);
	
	//can we make a path to the player
	var _found_player = mp_grid_path(global.mp_grid, path, x, y, o_player.x, o_player.y, choose(0, 1));
	
	//start path if we can reach the player
	if _found_player {
		path_start(path, spd, path_action_stop, false);
	}
}