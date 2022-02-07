

for (var i = 0; i < 20; i++) 
{
	dir = choose(0, 1, 2, 3);
	
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

	repeat_amount--;
	if (repeat_amount <= 0)
	{
		instance_destroy();
	}
}