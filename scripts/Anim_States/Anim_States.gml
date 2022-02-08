//sets animation sprites to enemeys
function Anim_States(){

	//is walking or in place
	if speed > 0 {
		sprite_index = Walk;
	}
	else{
		sprite_index = Idle;
	}

}