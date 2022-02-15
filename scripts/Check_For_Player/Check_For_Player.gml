
function Check_For_Player(){
	
	//check if the player is close enough to start chasing
	var _dis = distance_to_object(o_player);
	
	//can we start chasing? or are we already alert and out of attack dis?
	if ((_dis <= alert_dis) or alert) and _dis > attack_dis {
		
		//enemy is now alert
		alert = true;
		
		
		
		speed = localspd;
		
		
		//should we calc our path?
		if calc_path_timer-- <= 0 {
			//reset timer
			calc_path_timer = calc_path_delay;
		
			//can we make a path to the player
			var _found_player = mp_grid_path(global.mp_grid, path, x, y, o_player.x, o_player.y, choose(0, 1));
	
			//start path if we can reach the player
			if _found_player {
				path_start(path, speed, path_action_stop, false);
			}
		}
	}
	else{
		//are we close enough to attack?
		if _dis <= attack_dis{
			path_end();
		}
		
	}
}