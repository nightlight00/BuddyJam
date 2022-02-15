Check_For_Player();

angle = 0

if(speed > 0)
{
	state = s_scorp_walk;
}
else
{
	if(speed == 0)
	{
		state = s_scorp;
	}
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


// simple
if (image_yscale >= 2) {
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




