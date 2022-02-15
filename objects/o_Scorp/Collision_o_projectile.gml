/// @description 

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

image_xscale += sqrt(other.proj_damage) / global.enemyLevel / 50;
image_yscale = image_xscale;

Hp -= other.proj_damage;





