Check_For_Player();
//note to self add animations

angle = point_direction(x, y, o_player.x, o_player.y) + 90


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
					global.playerHealth -= enemydamage;
		
					//check if the player is bleeding
					if(global.bleed == false)
					{
						if(global.playerHealth <= global.playerHealthMax * 10 / 100)
						{
							
						}
						else
						{
						//sets bleeding to true and resets bleed counts
						global.bleed = true;
						global.bleed_damage = 1;
						global.bleed_counts = 10;
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
if(image_xscale >= 1.3)
{
	audio_play_sound(snd_desintegration, 1, 0);
	Drops();
	instance_destroy();
}		


