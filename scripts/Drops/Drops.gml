// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Drops(){
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
}