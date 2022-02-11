//checks if player has 0 hp
if (Hp < 0)
{
	instance_destroy();
}
else
{
	if (image_xscale >= 2)
	{
		instance_destroy();
	}
	else
	{
		//takes away enemys hp
		other.penetrate -= 1;

		//changes sprite image to hurt sprite
		if (Damage_cd-- <= 0)
		{
			speed = 0;
			Damage_cd = 5;
		}
		
		if(speed >= 0)
		{
			speed -= 0.1
		}

		image_xscale += sqrt(other.proj_damage) / 10;
		image_yscale = image_xscale;

		Hp -= other.proj_damage;
		//Hp -= clamp(sqrt(MaxHp) - image_xscale, sqrt(sqrt(MaxHp)), 1); 
	}
}




