if (holding = -1)
{
	weapon_type = ds_list_create();
	for (var i = 0; i < 6; i++) 
	{
		if (instance_exists(o_weapon)) {
			if (o_weapon.current_weap != i) {
				ds_list_add(weapon_type, i);
			}
		}
	}
	ds_list_shuffle(weapon_type);
	holding = ds_list_find_value(weapon_type, 0);
	ds_list_destroy(weapon_type);

}
image_index = holding;
image_speed = 0;