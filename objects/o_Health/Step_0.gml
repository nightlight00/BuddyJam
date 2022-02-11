if (distance_to_object(o_player) <= 4 )
{
	if(global.playerHealth < global.playerHealthMax)
	{
		global.playerHealth = clamp(global.playerHealth + 1, 0, 100);
		instance_destroy();
		
	}
	else
	{
		return
	}
	
}