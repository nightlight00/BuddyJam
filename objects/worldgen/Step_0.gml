global.time++;

if (global.worldgen_stage <= 6) 
{
	aveFPS = (aveFPS + fps) / 2; 
}


switch (global.worldgen_stage)
{
	case 0: //spawn portal location and portal path
		var lng = irandom_range(-40, 40);
		var oth = 30 - abs(lng);
		var hei = choose(oth, -oth);
	
		global.portalX = x + lng;
		global.portalY = y + hei;
	
		for (var l = -2; l < 3; l++)
		{
			for (var h = -2; h < 3; h++)
			{
				placeTile(global.portalX+l, global.portalY+h, wg_goal);
			}
		}
	
		instance_create_layer(global.portalX, global.portalY, "Instances", smartwalker);
		global.worldgen_stage++;
		break;
	case -1: // add egg sac - remove this an do it another way
		with (wg_goal)
		{
			placeTile(x-1, y, wg_wall);
			placeTile(x+1, y, wg_wall);
			placeTile(x, y+1, wg_wall);
			placeTile(x, y-1, wg_wall);
		}
		// do this seperate to make sure they all have walls
		with (wg_wall)
		{
			if (instance_place(x-1, y, wg_floor) && instance_place(x+1, y, wg_goal)) //|| (instance_place(x-1, y, wg_goal) && instance_place(x+1, y, wg_floor)) ||
				//(instance_place(x, y-1, wg_floor) && instance_place(x, y+1, wg_goal)) || (instance_place(x, y-1, wg_goal) && instance_place(x, y+1, wg_floor))
			{
				instance_create_layer(x, y, "Instances", wg_eggsack);
				instance_destroy(self);
			}
		}
		global.worldgen_stage++;
		break;
	case 1: // add normal walkers
		if (instance_exists(walker) || instance_exists(smartwalker)) { 
			return; }
		instance_create_layer(global.portalX, global.portalY, "Instances", smartwalker);
	
		instance_create_layer(room_width/2 - 5, room_height/2, "Instances", walker);
		instance_create_layer(room_width/2 + 5, room_height/2, "Instances", walker);
		instance_create_layer(room_width/2, room_height/2 + 5, "Instances", walker);
		instance_create_layer(room_width/2, room_height/2 - 5, "Instances", walker);

	    global.worldgen_stage++;
		break;
	case 2: // place extra tiles
		if (instance_exists(walker) || instance_exists(smartwalker)) { 
			return; }
			
		with (wg_floor)
		{		
			var sides = 0;
			if (instance_place(x-1, y, wg_floor)) { sides++; }
			if (instance_place(x+1, y, wg_floor)) { sides++; }
			if (instance_place(x, y+1, wg_floor)) { sides++; }
			if (instance_place(x, y-1, wg_floor)) { sides++; }
		
			if (sides == 0) 
			{
				instance_destroy();
			}
			else if (sides == 1) 
			{
				if (irandom(20) == 1)
				{
					placeBuilding(x, y);
				}
			}
			else 
			{
				if (irandom(24*sides) == 1)
				{
					placeBuilding(x, y);
				}
			}
		}
		global.worldgen_stage++;
		break;
	case 3: // add walls
	case 5:
		with (wg_floor)
		{
			placeTile(x-1, y, wg_wall);
			placeTile(x+1, y, wg_wall);
			placeTile(x, y+1, wg_wall);
			placeTile(x, y-1, wg_wall);
		}
		with (wg_goal)
		{
			placeTile(x-1, y, wg_wall);
			placeTile(x+1, y, wg_wall);
			placeTile(x, y+1, wg_wall);
			placeTile(x, y-1, wg_wall);
		}
		global.worldgen_stage++;
		break;
	case 4: // remove single walls
		with (wg_wall)
		{
			var sides = 0;
			if (instance_place(x-1, y, wg_floor)) { sides++; }
			if (instance_place(x+1, y, wg_floor)) { sides++; }
			if (instance_place(x, y+1, wg_floor)) { sides++; }
			if (instance_place(x, y-1, wg_floor)) { sides++; }
			if (instance_place(x-1, y-1, wg_floor)) { sides++; }
			if (instance_place(x+1, y-1, wg_floor)) { sides++; }
			if (instance_place(x-1, y+1, wg_floor)) { sides++; }
			if (instance_place(x+1, y-1, wg_floor)) { sides++; }
			if (sides == 8 && irandom(7) <= 4)
			{
				instance_create_layer(x, y, "Instances", wg_floor);
				instance_destroy(self);
			}
		}
		global.worldgen_stage++;
		break;
	case 6: // spawn egg sacks (case 5 is walls again) 
		if (instance_number(wg_eggsack) <= 4) {
			with (wg_floor) 
			{
				if (instance_number(wg_eggsack) >= 7) {
					global.worldgen_stage++
					return; 
				}
				var sides = 0;
				if (instance_place(x-1, y, wg_floor)) { sides++; }
				if (instance_place(x+1, y, wg_floor)) { sides++; }
				if (instance_place(x, y+1, wg_floor)) { sides++; }
				if (instance_place(x, y-1, wg_floor)) { sides++; }
				if (instance_place(x-1, y-1, wg_floor)) { sides++; }
				if (instance_place(x+1, y-1, wg_floor)) { sides++; }
				if (instance_place(x-1, y+1, wg_floor)) { sides++; }
				if (instance_place(x+1, y-1, wg_floor)) { sides++; }
				if ((sides >= 3 && sides <= 6) && irandom(75) == 0)
				{
					var closeEgg = instance_nearest(x, y, wg_eggsack);
					var important = instance_nearest(x, y, wg_goal);
					if (distance_to_object(closeEgg) > 9 && distance_to_object(important) > 4)
					{
						instance_create_layer(x, y, "Instances", wg_eggsack);
						instance_destroy(self);
					}
				}
			}
		}
		else {
			global.worldgen_stage++; }
		break;
}
