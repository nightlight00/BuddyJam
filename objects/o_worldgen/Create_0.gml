
repeat (3)
{
	instance_create_layer(room_width / 2, room_height / 2, "Instances", o_walker);
}

buildSquare(room_width / 2, room_height / 2, 3);

worldgen_stage = 0;
portalX = 0;
portalY = 0;

global.enemyWeight = 10;
spawn = noone;