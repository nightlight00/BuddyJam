if(Hp <= 0){
	instance_destroy();
}

Hp -= other.proj_damage;
image_xscale += other.proj_damage / 10;
image_yscale = image_xscale;
spd -= clamp(0, 2, image_yscale / 5) 
other.penetrate--;


