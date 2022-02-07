//check if player is close enough to start chasing

function CheckForPlayer(){
	var _dis = distance_to_object(o_player);
	move_towards_point(o_player.x, o_player.y, 1);
}