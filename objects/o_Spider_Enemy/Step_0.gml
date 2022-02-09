Check_For_Player();
Anim_States();



//if enemy loses sight of player set speed to 0
if (speed > 0)
{
	if(alert == false)
	{
		path_end();
		speed = 0
	}
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

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
	if (In_Range == true)
	{
		speed = 0;
		
		
		//if image is scaled up to 2 or more
		if (image_yscale >= 2)
		{ 

			//damage player
			global.playerHealth -= enemydamage / distance_to_object(o_player);
			instance_destroy();

		}
		else
		{
			if(Hp <= 0)
		{
			instance_destroy();
		}
		
			image_xscale += 0.01;
			image_yscale = image_xscale;
			Hp -= 0.1
		}
		
		
	}