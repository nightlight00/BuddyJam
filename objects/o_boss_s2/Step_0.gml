
// set scale


// choose attack
if (attack_cooldown == 0) {
	
	// choose an attack from a dynamic list 
	var atklist = ds_list_create();
	ds_list_add(atklist, 1);
	ds_list_add(atklist, 2);
	if (hp < MaxHp * 0.65) {
		// allow mini lasers to spawn
		ds_list_add(atklist, 3);
		// make these two more common
		ds_list_add(atklist, 1);
		ds_list_add(atklist, 2);
	}
	if (hp > MaxHp * 0.1) {
		if (hp < MaxHp * 0.75) {
			// dont have spiders spawn at the beginning or end of the fight
			ds_list_add(atklist, 4);
		}
		if (hp < MaxHp * 0.8) {
			// to help make fight feel like its progressing, but not at end because unfair hits can happen
			ds_list_add(atklist, 5); 
		}
	}
	
	ds_list_shuffle(atklist);
	current_attack = ds_list_find_value(atklist, 0);
	ds_list_destroy(atklist);
	
	switch (current_attack) 
	{
		case 1: // laser mouth
			attack_timer = 120;
			if (hp < MaxHp * 0.6) { // lasts longer when at lower health
				attack_timer += 40; }
			if (hp < MaxHp * 0.3) { // even longer when at even lower health
				attack_timer += 40; }
			attack_cooldown = 60;
			break;
		case 2: // arm pellets
			attack_timer = 180;
			if (hp < MaxHp * 0.5) { // adds another round, so 4 more pellets
				attack_timer += 60; }
			attack_cooldown = 75;
			break;
		case 3: // mini arm lasers
			attack_timer = 60;
			attack_cooldown = 100;
			if (hp < MaxHp * 0.25) { // makes the next attack come sooner since its an easy to avoid attack
				attack_cooldown -= 20; }
			break;
		case 4: // summon spiders
			attack_timer = 60; // dont change things here, more are summoned instead of faster timers
			attack_cooldown = 100;
			break;
		case 5: // slam
			attack_timer = 42;
			attack_cooldown = 45;
			arm_version = s_boss_stage2_arm_slam;
			image_index = 0;
			break;
		default: break;
	}
}


// code for attacks
if (attack_timer > 0) 
{
	switch (current_attack) 
	{
		case 1: // laser attack
			if (attack_timer mod 40 == 39) {
				// creates the warning, which in turn creates the laser
				targetdir = point_direction(x + wiggle, y + (32 * image_yscale) - wiggle2, o_player.x, o_player.y) + 90;
				var laser = instance_create_layer(x + wiggle, y + (32 * image_yscale) - wiggle2, "Player", o_laser_boss_warn);
				laser.direction = targetdir;
				laser.image_angle = laser.direction;
				laser.image_xscale = 1 + ((image_xscale - 1) * 0.5);
			}
			break;
		case 2: // arm pellets
			if (attack_timer mod 15 == 0) {
				if (++targetdir > 3) {
					targetdir = 0; }
				var origX, origY;
				switch (targetdir) {
					// origin point of each arms bulb on sprite
					case 0: origX = -27 * image_xscale; origY = -25 * image_yscale; break;
					case 1: origX = 27 * image_xscale; origY = -25 * image_yscale; break;
					case 2: origX = 33 * image_xscale; origY = 11 * image_yscale; break;
					case 3: origX = -33 * image_xscale; origY = 11 * image_yscale; break;
				}
				// creates pellets, they speed up as they travel
				var pel = instance_create_layer(x + wiggle + origX, y + 32 + wiggle2 + origY, "Player", o_boss_pellet);
				pel.direction = point_direction(x + wiggle + origX, y + 32 + wiggle2 + origY, o_player.x, o_player.y);
				pel.speed = 0.5;
				pel.image_angle = pel.direction + 90;
				pel.image_xscale = 1 + ((image_xscale - 1) * 0.75);
				pel.image_yscale = pel.image_xscale;
			}
			break;
		case 3: // mini arm lasers
			if (attack_timer == 40) {
				for (var i = 0; i < 4; i++) {
					var origX, origY;
					switch (i) {
						// origin point of each arms bulb
						case 0: origX = -27 * image_xscale; origY = -25 * image_yscale; break;
						case 1: origX = 27 * image_xscale; origY = -25 * image_yscale; break;
						case 2: origX = 33 * image_xscale; origY = 11 * image_yscale; break;
						case 3: origX = -33 * image_xscale; origY = 11 * image_yscale; break;
					}
					// create laser warning
					targetdir = point_direction(x + wiggle + origX, y + 32 - wiggle2 + origY, o_player.x, o_player.y) + 90;
					var laser = instance_create_layer(x + wiggle + origX, y + 32 - wiggle2 + origY, "Player", o_laser_boss_warn);
					laser.direction = targetdir;
					laser.image_angle = laser.direction;
					laser.image_xscale = image_xscale * 0.5;
				}
			}
			break;
		case 4: // summon spiders
			if (attack_timer == 40) {
				var amt = 1;
				if (hp < MaxHp * 0.5) { amt++; }
				if (hp < MaxHp * 0.2) { amt++; }
				for (var i = 0; i < amt; i++) {
					with (instance_find(o_floor, irandom(instance_number(o_floor) - 1))) {
						instance_create_layer(x, y, "Instances", o_boss_summon);
					}
				}
			}
			break;
		case 5: // slam
			if (attack_timer == 12) {
				// ground slam at arms
				for (var i = 0; i < 4; i++) {
					var origX, origY;
					switch (i) {
						// origin point of each arms bulb
						case 0: origX = -32 * image_xscale; origY = 11 * image_yscale; break;
						case 1: origX = 32 * image_xscale; origY = 11 * image_yscale; break;
						case 2: origX = -11 * image_xscale; origY = 20 * image_yscale; break;
						case 3: origX = 11 * image_xscale; origY = 20 * image_yscale; break;
					}
					var slam = instance_create_layer(x + wiggle + origX, y + 32 - wiggle2 + origY, "Instances", o_boss_slam);
					slam.image_xscale = image_xscale * 1.2;
					slam.image_yscale = slam.image_xscale;
				}
				// create falling flowers
				shakescreen(3, 4);
				arm_version = s_boss_stage2_arms;
				var amt = 3;
				if (hp < MaxHp * 0.5) { amt++; }
				if (hp < MaxHp * 0.2) { amt++; }
				for (var i = 0; i < amt; i++) {
					with (instance_find(o_floor, irandom(instance_number(o_floor) - 1))) {
						instance_create_layer(x, y-192, "Instances", o_falling_flower);
					}
				}
			}
			break;
	}
}
else {
	attack_cooldown--; }
	
attack_timer--;