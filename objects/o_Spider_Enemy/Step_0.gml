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