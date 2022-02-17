Check_For_Player();

if(image_yscale >= 2)
{
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

if (instance_exists(o_player)) {
	if (distance_to_object(o_player) <= attack_dis) {
		In_Range = true;
	}
	else {
		In_Range = false;
	}
}

	
if (In_Range == true)
{
	speed = 0;
		
	//if image is scaled up to 2 or more
	if (image_yscale >= 2)
	{ 
		/* create spider explosion instead
		if (global.playerImmuneFrames < 0) 
		{ 
			global.playerImmuneFrames = global.playerImmuneFramesReset;
				
			//damage player
			global.playerHealth -= clamp(enemydamage / clamp(distance_to_object(o_player), 0, 50), 0, global.playerHealth / 2);
			
		}
		*/ 
		instance_create_layer(x, y, "Instances", o_spider_death);
		
		Drops();
		instance_destroy();
		
		
	}
	else
	{
			
		image_xscale += 0.01;
		image_yscale = image_xscale;
		localspd = clamp(localspd - 0.01, 0.10, 2);		
	}
}