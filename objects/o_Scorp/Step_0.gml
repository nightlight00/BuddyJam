
if (!attacking) {
	Check_For_Player();
}
else {
	switch (attack_choice) {
		case -1: // choose attack
			if (distance_to_object(o_player) > 100) {
				attack_choice = 0;
			}
			else {
				attack_choice = 1;
			}
			break;
		case 0: // laser
			speed = 0;
			if (attack_timer < 80) {
				//charge laser
				attack_dir = point_direction(x, y, o_player.x, o_player.y);
			}
			else {
				if (!instance_exists(o_scorp_laser) && attack_timer > 100)
				{
					var laser = instance_create_layer(x-(10*(image_xscale*safe_xscale)), y-(10*image_yscale), "Enemy", o_scorp_laser);
					laser.direction = attack_dir + 90;
					laser.image_angle = laser.direction;
				}
				// reset variables when done 
				if (attack_timer > 120) {
					attack_choice = -1;
					attacking = false;
					attack_timer = 0;
				}
			}
			break;
		case 1: // bullet attack
			if (attack_timer > 50 && attack_timer < 90) {
				if (attack_timer mod 7 == 2) {
					var laser = instance_create_layer(x+(20*(image_xscale*safe_xscale)), y+(30*image_yscale), "Enemy", o_scorp_bullet);
					laser.direction = point_direction(x, y, o_player.x, o_player.y) + random_range(-5, 5);
					laser.image_angle = laser.direction;
					laser.speed = 3;
				}
			}
			// reset variables when done 
			if (attack_timer > 120) {
				attack_choice = -1;
				attacking = false;
				attack_timer = 0;
			}
			break;
	}
	if (attack_choice == 0) {
		
	}
}


/////////////////////////////////////////////////////////

//set collision
var box = bbox_right;
if (hspeed < 0) { box = bbox_left; }
if (collision_point(box + hspeed, bbox_top, o_wall, false, true) || collision_point(box + hspeed, bbox_bottom, o_wall, false, true)) {
	hspeed = 0; }
box = bbox_top;
if (vspeed > 0) { box = bbox_bottom; }
if (collision_point(bbox_right, box + vspeed, o_wall, false, true) || collision_point(bbox_left, box + vspeed, o_wall, false, true)) {
	vspeed = 0; }
	
if(distance_to_object(o_player)>= 400){
	alert = false;
}


//if enemy loses sight of player set speed to 0
if (speed > 0)
{
	if(alert == false)
	{
		path_end();
		speed = 0
	}
	
}

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

if (instance_exists(o_player)) {
	if (distance_to_object(o_player) <= attack_dis) {
		In_Range = true;
		if (attack_timer > 30) {
			attacking = true;
		}
	}
	else {
		In_Range = false;
	}
}

// increase attack timer if in range ot already attacking
if (In_Range || attacking) {
	attack_timer++;
}

// simple
if (Hp <= 0 || image_xscale > 3) {
	instance_destroy();
}
