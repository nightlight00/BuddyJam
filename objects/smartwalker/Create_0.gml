

repeat_amount = 100;
/*
for (var i = 0; i < repeat_amount; i++) 
{
	
	var op1 = 0;
	if (x > room_width/2) { op1 = 2; }
	var op2 = 1;
	if (y > room_height/2) { op2 = 3; }

	if (!instance_exists(walker)) {
		dir = choose(op1, op2, 0, 0, 1, 1, 2, 2, 3, 3); }
	else {
		dir = choose(op1, op2); }


	for (var d = 0; d < irandom_range(1, 3); d++)
	{
		switch (dir)
		{
			case 0: x += 1; break;
			case 1: y += 1; break;
			case 2: x -= 1; break;
			case 3: y -= 1; break;
		}
	
		if (!instance_place(x, y, wg_floor)) 
		{
			global.floorCount++;
			instance_create_layer(x, y, "Instances", wg_floor);
		}
	}
	
	
	if (irandom(43) <= 3) 
	{
		placeBuilding(x, y);
	}
	
	
	if (irandom(43) <= 3) 
	{
		placeBuilding(x, y);
	}
}

global.walkerAmount--;

instance_destroy();