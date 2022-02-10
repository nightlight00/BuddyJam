Check_For_Player();
//note to self add animations


///////////////////////////////////////////
//////////////////////////////////////////
			//attack

if (distance_to_object(o_player) <= attack_dis)
{
		In_Range = true;
		
		if (In_Range == true)
		{
			speed = 0;
		
			if (global.playerImmuneFrames > 0) 
			{ 
				
			}
			else 
			{ 
				if(wait_cd-- <= 0)
				{
					wait_cd = 20;
					global.playerImmuneFrames = global.playerImmuneFramesReset;
						//damage player
					global.playerHealth -= enemydamage / 2;
		
					//check if the player is bleeding
					if(Bleeding == false)
					{
						if(global.playerHealth <= global.playerHealthMax * 10 / 100)
						{
							return
						}
						else
						{
						//sets bleeding to true and resets bleed counts
						Bleeding = true;
						bleed_counts = 10;
						}
					}
				}
				 
			}	
		}
}
else
{
	In_Range = false;
}


//checks hp
if(Hp < 1)
{
	instance_destroy();
}		



//checks if bleeding
if (Bleeding == true)
{
	if(global.playerHealth <= global.playerHealthMax * 10 / 100)
	{
		Bleeding = false;
	}
	else
	{
		if (bleed_counts >= 1)
		{
			if(Attack_cd-- <= 0)
			{
				bleed_counts--;
				global.playerHealth -= enemydamage / 5;
				Attack_cd = 50;
			}
		}
		else
		{
			Bleeding = false;
		}
	}
}	
