//checks if player has 0 hp
if (Hp <= 0)
{
	instance_destroy();
}

//takes away enemys hp
Hp -= other.proj_damage;
other.penetrate -= 1;

//changes sprite image
if (Damage_cd-- <= 0)
{
	speed = 0;
	sprite_index = hurt;
	Damage_cd = 5;
}

image_xscale += other.proj_damage / 10;

image_yscale = image_xscale;

