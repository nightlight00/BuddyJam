{ /* Pistol - 0 */
playerWeapons[0] = ds_map_create();
ds_map_add(playerWeapons[0], "weap_sprite", s_test);
ds_map_add(playerWeapons[0], "weap_proj", o_plasma_laser);
ds_map_add(playerWeapons[0], "weap_cooldown", 20);
ds_map_add(playerWeapons[0], "weap_spread", 3);
ds_map_add(playerWeapons[0], "weap_velocity", 2);
ds_map_add(playerWeapons[0], "weap_amount", 1);
ds_map_add(playerWeapons[0], "weap_damage", 3);
ds_map_add(playerWeapons[0], "weap_auto", false);
//ds_map_add(playerWeapons[0], "weap_
}
{ /* Shotgun - 1 */
playerWeapons[1] = ds_map_create();
ds_map_add(playerWeapons[1], "weap_sprite", s_test);
ds_map_add(playerWeapons[1], "weap_proj", o_plasma_shell);
ds_map_add(playerWeapons[1], "weap_cooldown", 32);
ds_map_add(playerWeapons[1], "weap_spread", 20);
ds_map_add(playerWeapons[1], "weap_velocity", 5);
ds_map_add(playerWeapons[1], "weap_amount", 7);
ds_map_add(playerWeapons[1], "weap_damage", 0.69);
ds_map_add(playerWeapons[1], "weap_auto", false);
//ds_map_add(playerWeapons[0], "weap_
}
{ /* AR - 2 */
playerWeapons[2] = ds_map_create();
ds_map_add(playerWeapons[2], "weap_sprite", s_test);
ds_map_add(playerWeapons[2], "weap_proj", o_plasma_bullet);
ds_map_add(playerWeapons[2], "weap_cooldown", 31);
ds_map_add(playerWeapons[2], "weap_spread", 7);
ds_map_add(playerWeapons[2], "weap_velocity", 4.2);
ds_map_add(playerWeapons[2], "weap_amount", 1);
ds_map_add(playerWeapons[2], "weap_damage", 0.86);
ds_map_add(playerWeapons[2], "weap_auto", true);
//ds_map_add(playerWeapons[0], "weap_
}

current_weap = 0;
swapWeap(current_weap);
last_weap = current_weap;

image_speed = 0;
image_index = current_weap;

current_cooldown = 0;