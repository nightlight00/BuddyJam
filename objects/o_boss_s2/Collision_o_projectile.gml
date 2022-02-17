
//takes away enemys hp
other.penetrate -= 1;

hp -= other.proj_damage;

image_xscale += other.proj_damage / MaxHp;
image_yscale = image_xscale;



