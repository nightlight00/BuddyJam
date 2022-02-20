
holding = noone;
var inst = instance_number(o_egg);
if (inst == 1) { holding = o_battery; }
else if (inst == 2 || inst == 3) { holding = o_weapon_pick; }

image_xscale = choose(1, -1);

sprite_index = choose(s_eggs1, s_eggs2, s_eggs3);