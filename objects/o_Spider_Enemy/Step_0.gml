Check_For_Player();

//set enemy speed
if (spd == 1)
{
	if(alert == false)
	{
		path_end();
		spd = 0
	}
}


//animation handle
if spd > 0 {
		sprite_index = spidey_walk;
	}
	else{
		sprite_index = spidey_idle;
	}

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