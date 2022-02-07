
switch (worldgen_stage)
{
	case 0:// spawn end point
		portalX = irandom_range(-40, 40);
		var oth = 40 - abs(portalX);
		portalY = choose(oth, -oth);
		
		buildSquare((room_width / 2) + (portalX * global.cellSize), (room_height / 2) + (portalY * global.cellSize), 3);

		instance_create_layer((room_width / 2) + (portalX * global.cellSize), (room_height / 2) + (portalY * global.cellSize), "Instances", o_smartwalker);
		
		worldgen_stage++;
		break;
	case 1: // spawn 3 walkers
		repeat (3)
		{
			instance_create_layer(room_width / 2, room_height / 2, "Instances", o_walker);
		}
		worldgen_stage++;
		break;
	case 2: // add some more tiles randomly
		if (instance_exists(o_walker) || instance_exists(o_smartwalker)) {
			return; }
		with (o_floor)
		{
			if (!instance_place(x + global.cellSize, y, o_floor) && irandom(45) == 0) {
				instance_create_layer(x + global.cellSize, y, "Instances", o_floor); }
			if (!instance_place(x - global.cellSize, y, o_floor) && irandom(45) == 0) {
				instance_create_layer(x - global.cellSize, y, "Instances", o_floor); }
			if (!instance_place(x, y + global.cellSize, o_floor) && irandom(45) == 0) {
				instance_create_layer(x, y + global.cellSize, "Instances", o_floor); }
			if (!instance_place(x, y - global.cellSize, o_floor) && irandom(45) == 0) {
				instance_create_layer(x, y - global.cellSize, "Instances", o_floor); }
		}
		worldgen_stage++;
		break;
	case 3: // destroy single floor tiles
		with (o_floor)
		{		
			var sides = 0;
			if (instance_place(x - global.cellSize, y, o_floor)) { sides++; }
			if (instance_place(x + global.cellSize, y, o_floor)) { sides++; }
			if (instance_place(x, y + global.cellSize, o_floor)) { sides++; }
			if (instance_place(x, y - global.cellSize, o_floor)) { sides++; }
		
			if (sides == 0) 
			{
				instance_destroy();
			}
		}
		worldgen_stage++;
		break;
	case 6: 
	case 4: // add walls
		with (o_floor)
		{
			placeWall(x - global.cellSize, y);
			placeWall(x + global.cellSize, y);
			placeWall(x, y + global.cellSize);
			placeWall(x, y - global.cellSize);
			placeWall(x - global.cellSize, y - global.cellSize);
			placeWall(x + global.cellSize, y - global.cellSize);
			placeWall(x + global.cellSize, y + global.cellSize);
			placeWall(x - global.cellSize, y + global.cellSize);
		}
		worldgen_stage++;
		break;
	case 5: // destroy snigle walls
		with (o_wall)
		{
			var sides = 0;
			if (instance_place(x - global.cellSize, y, o_floor)) { sides++; }
			if (instance_place(x + global.cellSize, y, o_floor)) { sides++; }
			if (instance_place(x, y + global.cellSize, o_floor)) { sides++; }
			if (instance_place(x, y - global.cellSize, o_floor)) { sides++; }
			if (instance_place(x - global.cellSize, y - global.cellSize, o_floor)) { sides++; }
			if (instance_place(x + global.cellSize, y + global.cellSize, o_floor)) { sides++; }
			if (instance_place(x - global.cellSize, y + global.cellSize, o_floor)) { sides++; }
			if (instance_place(x + global.cellSize, y - global.cellSize, o_floor)) { sides++; }
			
			if (sides == 8 && irandom(35) == 0) || (sides == 7 && irandom(45) == 0)
				|| (sides == 5 && irandom(55) == 0) {
				with (instance_place(x, y, o_floor)) {
					instance_destroy(); }
				placeWall(x, y);
			}
		}
		worldgen_stage++;
		break;
	case 7: // 6 is walls, add eggsacs
		if (instance_number(o_egg) <= 4) {
			with (o_floor) 
			{
				if (instance_number(o_egg) >= 7) {
					other.worldgen_stage++; 
					return; 
				}
				
				var sides = 0;
				if (instance_place(x - global.cellSize, y, o_floor)) { sides++; }
				if (instance_place(x + global.cellSize, y, o_floor)) { sides++; }
				if (instance_place(x, y + global.cellSize, o_floor)) { sides++; }
				if (instance_place(x, y - global.cellSize, o_floor)) { sides++; }
				if (instance_place(x - global.cellSize, y - global.cellSize, o_floor)) { sides++; }
				if (instance_place(x + global.cellSize, y + global.cellSize, o_floor)) { sides++; }
				if (instance_place(x - global.cellSize, y + global.cellSize, o_floor)) { sides++; }
				if (instance_place(x + global.cellSize, y - global.cellSize, o_floor)) { sides++; }
				if ((sides >= 3 && sides <= 6) && irandom(75) == 0)
				{
					var closeEgg = instance_nearest(x, y, o_egg);
					if (distance_to_object(closeEgg) > 4 * global.cellSize)
					{
						instance_create_layer(x, y, "Instances", o_egg);
					}
				}
			}
		}
		else {
			worldgen_stage++; }
		break;
}