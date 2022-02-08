Check_For_Player();
speed = spd;

if(Hp <= 0){
	instance_destroy();
}

if speed > 0 {
		sprite_index = spidey_walk;
	}
	else{
		sprite_index = spidey_idle;
	}