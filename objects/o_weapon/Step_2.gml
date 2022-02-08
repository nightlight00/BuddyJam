
return; // dont draw rest

if (instance_exists(o_player))
{
	x = o_player.x + lengthdir_x(2, direction);
	y =( o_player.y - 4) + lengthdir_y(1, direction);
}
