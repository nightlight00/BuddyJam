
/// @description 

// Inherit the parent event
event_inherited();

speed *= 0.98;
if (abs(speed) < 0.8) 
{
	instance_destroy();
}

createDust(1, x, y);

if (!instance_exists(o_weapon)) {
	return; }
	
if (o_weapon.current_weap == 4) {
	var enem = instance_nearest(x, y, o_enemy_parent);
	if (instance_exists(o_boss_s2)) {
		enem = o_boss_s2;
	}
	if (distance_to_object(enem) < 64) {
		var pd = point_direction(x, y, enem.x, enem.y);
		var dd = angle_difference(direction, pd);
		direction -= min(abs(dd), 2.2) * sign(dd);
	}
}