
if (speed = 0) 
{
	ai0 += 0.08 + random_range(0.03, 0.05);
	if (ai0 > 12)
	{
		direction = random(360);
		speed = random_range(1.4, 1.6);
		ai0 = 0;
	}
}
else 
{
	ai1 += 0.1;
	
	if (image_xscale <= 1.7)
	{
		var box = bbox_right;
		if (hspeed < 0) { box = bbox_left; }
		if (collision_point(box + hspeed, bbox_top, o_wall, false, true) || collision_point(box + hspeed, bbox_bottom, o_wall, false, true)) {
			hspeed = -hspeed; }
		box = bbox_top;
		if (vspeed > 0) { box = bbox_bottom; }
		if (collision_point(bbox_right, box + vspeed, o_wall, false, true) || collision_point(bbox_left, box + vspeed, o_wall, false, true)) {
			vspeed = -vspeed; }
	}
	
	ai0++;
	if (ai0 mod 6 = 0) 
	{
		with (instance_create_layer(x, y, "Instances", o_eProj))
		{
			direction = random(360);
			image_angle = direction;
			speed = 3 * other.image_xscale;
			
			image_xscale = 0.5 * other.image_xscale;
			image_yscale = 0.2 * other.image_yscale;
		}
	}
	
	if (ai1 > 8) 
	{
		speed = 0;
		ai1 = 0;
		ai0 = 0;
	}
}



