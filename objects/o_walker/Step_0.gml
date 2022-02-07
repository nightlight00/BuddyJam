
for (var i = 0; i < 10; i++)
{
	var dir = choose(0, 1, 2, 3);
	switch (dir) 
	{
		case 0: x += global.cellSize; break;
		case 1: y += global.cellSize; break;
		case 2: x -= global.cellSize; break;
		case 3: y -= global.cellSize; break;
	}
	
	if (!instance_position(x, y, o_floor))
	{
		instance_create_layer(x, y, "Floor", o_floor);
		walker_lifetime--;
	}
	
	if (walker_lifetime < 0)
	{
		instance_destroy();
	}

	if (irandom(65) == 0) 
	{
		minorFloor(x, y);
	}
}
