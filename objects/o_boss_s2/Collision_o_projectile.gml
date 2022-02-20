
//takes away enemys hp
other.penetrate -= 1;

hp -= other.proj_damage * (1 - defense);

image_xscale += (other.proj_damage * (1 - defense)) / MaxHp;
image_yscale = image_xscale;

if (hp < 0) {
	instance_create_layer(x, y, "Instances", o_boss_death);
	instance_destroy();
	//show_message("u win");
	///game_end();
}
else { // change defense
	defense = 0;
	if (hp < MaxHp * 0.5) {
		defense += 0.15;
	}
	if (hp < MaxHp * 0.2) {
		defense += 0.35;
	}
	
}