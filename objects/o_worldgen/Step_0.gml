
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
				instance_create_layer(x + global.cellSize, y, "Floor", o_floor); }
			if (!instance_place(x - global.cellSize, y, o_floor) && irandom(45) == 0) {
				instance_create_layer(x - global.cellSize, y, "Floor", o_floor); }
			if (!instance_place(x, y + global.cellSize, o_floor) && irandom(45) == 0) {
				instance_create_layer(x, y + global.cellSize, "Floor", o_floor); }
			if (!instance_place(x, y - global.cellSize, o_floor) && irandom(45) == 0) {
				instance_create_layer(x, y - global.cellSize, "Floor", o_floor); }
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
		/////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////
		////// path code////////////////////////////////////////
		
		//get tiles in room
		var _w = ceil(room_width / 16)
		var _h = ceil(room_height / 16)
		
		//create motion planning grid
		global.mp_grid = mp_grid_create(0,0, _w, _h, 16, 16);

		//add solid instances to grid
		mp_grid_add_instances(global.mp_grid, o_wall, true);
		
		///////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////
		
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
	case 8: // spawn enemies
		for (var i = 0; i < 5; i++)
		{	
			// find a place to spawn them
			with (irandom(instance_number(o_floor) - 1)) 
			{
				// check distance to nearest, dont want to spawn to close to eachother
				var near = instance_nearest(x, y, o_enemy_parent);
				if (distance_to_object(near) > 48) {
					
					var enem_list = ds_list_create();
					for (var d = 0; d < 3; d++) { // add common enemies to list
						if (global.enemyWeight > 0) { // cant be added if not enough space
							ds_list_add(enem_list, o_Spider_Enemy.object_index);
						}
					}
			
					// shuffle list
					ds_list_shuffle(enem_list);
					var spawn = ds_list_find_value(enem_list, 0);
			
					// add weight to each enemy
					switch (spawn) {
						case o_Spider_Enemy:
							global.enemyWeight--;
							break;
						default:
							return;
							break;
					}
			
					if (spawn == noone) {
						return; }
			
					instance_create_layer(x, y, "Enemy", spawn);
					ds_list_destroy(enem_list);
				}
			}
		}
		

		if (global.enemyWeight <= 0) {
			worldgen_stage++; 
			
			}
		break;
		
		
}