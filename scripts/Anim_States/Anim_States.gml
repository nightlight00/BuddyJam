// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Anim_States(){
	
	//Walk and Idle
	if (speed > 0)
	{
		
	}
	else
	{
		sprite_index = Idle_Body;
	}
	
	//Attack
	if (distance_to_object(o_player) <= attack_dis)
	{
		In_Range = true;
		sprite_index = Charge_Body; //need to remove this and put it in spidy
	}
	else{
		if (In_Range == true)
		{
			In_Range = false;
		}
		return
	}

}