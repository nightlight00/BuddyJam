Check_For_Player();

angle = 0


//when player is far away shoot laser
if(distance_to_object(o_player) > 50 and distance_to_object(o_player) < 300)
{
	if (done == true)
	{
		i = irandom_range(0, 1)
		done = false;
		localspd = 1;
		mode = 0;

		
	}
	if (done == false)
	{
		switch(attack_mode = i)
		{
			case 0:
			mode = 1;
			if (shoot_timer-- < 0 and mode == 1)
			{
				state = s_scorp_shot;
				playSound(snd_scorp_gun, 1, false, x, y, 0.3, true);
				var laser = instance_create_layer(x+(20*(image_xscale*xscaler)), y+(30*image_yscale), "Enemy", o_scorp_bullet);
				laser.direction = point_direction(x, y, o_player.x, o_player.y) + random_range(-5, 5);
				laser.image_angle = laser.direction;
				laser.speed = 3;
				shoot_timer = 6;
				done = true
			}
			break;
		
			//laser attack
			case 1:
			mode = 2;
			if (laser_charge-- < 0 and mode == 2)
			{
				attack_dir = point_direction(x, y, o_player.x, o_player.y);
				
				state = s_scorp_laser;
		
				if (laser_timer-- < 0 and mode == 2)
				{
					playSound(snd_desintegration, 1, false, x, y, 0.5, true);
					localspd = 0;
					var laser = instance_create_layer(x-(10*(image_xscale*xscaler)), y-(image_yscale), "Enemy", o_scorp_laser);
					laser.direction = attack_dir + 90;
					laser.image_angle = laser.direction;
					laser_charge = 50;
					laser_timer = 30;
					done = true;
					break;
				}
			}
			else
			{
				done = true;
				break;
			}
			
		}
	}
	
	
	
	
}
else
{
	mode = 0;
}

if(speed > 0 and mode == 0)
{
	state = s_scorp_walk;
}
else
{
	
	if(speed == 0 and mode == 0)
	{
		state = s_scorp;
	}
	
	//when player is close by sting him
	if distance_to_object(o_player) < 30
	{
		state = s_scorp_stab;
		if attack_timer-- < 0 
		{
			o_player.poison_timer = 120;
			o_player.poison = true;
			global.playerHealth -= global.enemyLevel;
			attack_timer = 30;
		}
	}
	

}

// face towards player
if (o_player.x > x) {
	xscaler = -1; }
else {
	xscaler = 1; }

// simple
if (image_yscale >= 1.6) {
	audio_play_sound(snd_desintegration, 1, 0);
	Drops();
	instance_destroy();
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