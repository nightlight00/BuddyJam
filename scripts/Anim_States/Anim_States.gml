// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Anim_States(){
	
	//Walk and Idle
	if (speed > 0)
	{
		sprite_index = Walk;
	}
	else
	{
		sprite_index = Idle;
	}
	
	//Attack
	if (distance_to_object(o_player) <= attack_dis)
	{
		sprite_index = charge;
		
		image_xscale += 0.01;
		image_yscale += 0.01;
		
		if (image_yscale >= 2)
		{ 
			global.playerHealth -= global.enemyLevel / distance_to_object(o_player)+1;
			instance_destroy();
		
		}
	}
	
	if (distance_to_object(o_player) > attack_dis){
		if(image_xscale >= 0.5)
		{
			image_xscale -= 0.01;
			image_yscale = image_xscale;
		}
	}

}