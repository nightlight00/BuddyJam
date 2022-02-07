//check if player is close enough to start chasing

function CheckForPlayer(){
	var _dis = distance_to_object(o_player);
	
	//can we make a path to the palyer?
	var _found_player = mp_grid_path(global.mp_grid, path, x, y, o_player.x, o_player.y, choose(0,1));
	
	//start path if we can reach the player
	if _found_player {
		path_start(path, 1, path_action_stop, false);
	}
}