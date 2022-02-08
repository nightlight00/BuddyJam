Hp -= other.proj_damage;
image_xscale += other.proj_damage / 10;
image_yscale = image_xscale;
spd -= clamp(0, 3, image_yscale * .02); 
other.penetrate--;

