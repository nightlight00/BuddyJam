if(Hp <= 0){
	instance_destroy();
}

//takes health away if hit
Hp -= other.proj_damage;

// scale the image larger
image_xscale += other.proj_damage / 10;
image_yscale = image_xscale;

//I forgot what this was for
other.penetrate--;

//change sprite if spider was hurt
sprite_index = hurt;


