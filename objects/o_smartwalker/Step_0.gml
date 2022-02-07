
for (var i = 0; i < 10; i++)
{
	var op1 = 0;
	if (x > room_width/2) { op1 = 2; }
	var op2 = 1;
	if (y > room_height/2) { op2 = 3; }

	
	dir = choose(op1, op2, 0, 1, 2, 3); 
	
		
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
	}
	
	if (irandom(50) == 0) 
	{
		minorFloor(x, y);
	}
	
	if (distance_to_point(room_height /2, room_width / 2) < 64)
	{
		instance_destroy();
	}
	walker_lifetime--;
}
if (walker_lifetime <= 0) {
	instance_destroy(); }
	