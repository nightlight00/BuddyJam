//system that gives a chance to drop an object
function Drops(){
	
	var _max = 80 - ((global.playerHealthMax - global.playerHealth) * 3);
	
	// equals 1 so they dont drop if 0, or when player at max health
	if (irandom(_max) <= 1.25) {
		instance_create_layer(x, y, "Instances", o_Health);
	}
	
	show_debug_message(string(_max));
	
	/*
	random_percentage = irandom_range(0, 10) * 100;
	random_percentage /= 10;
	show_debug_message(string(random_percentage));
	
	set_max = irandom_range(0, 10) * 100;
	set_max /= 10;
	if set_max <= 20
	{
		set_min = set_max;
		set_max += 21
	}
	else
	{
	set_min = set_max - 21;
	}
	
	if (set_min < random_percentage and random_percentage < set_max or set_min <= random_percentage and random_percentage < set_max or set_min < random_percentage and random_percentage <= set_max)
	{
		instance_create_layer(x, y, "Instances", o_Health);
		show_debug_message(string(set_min));
		show_debug_message(string(set_max));
	}
	else
	{
		show_debug_message(string(set_min));
		show_debug_message(string(set_max));
	}
	*/
}