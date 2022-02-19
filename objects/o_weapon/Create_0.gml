{ /* Pistol - 0 */
playerWeapons[0] = ds_map_create();
ds_map_add(playerWeapons[0], "weap_sprite", s_player_arm);
ds_map_add(playerWeapons[0], "weap_proj", o_plasma_laser);
ds_map_add(playerWeapons[0], "weap_cooldown", 20);
ds_map_add(playerWeapons[0], "weap_spread", 3);
ds_map_add(playerWeapons[0], "weap_velocity", 2);
ds_map_add(playerWeapons[0], "weap_amount", 1);
ds_map_add(playerWeapons[0], "weap_damage", 3);
ds_map_add(playerWeapons[0], "weap_auto", false);
ds_map_add(playerWeapons[0], "weap_sound", snd_laser_dull);
//ds_map_add(playerWeapons[0], "weap_
}
{ /* Shotgun - 1 */
playerWeapons[1] = ds_map_create();
ds_map_add(playerWeapons[1], "weap_sprite", s_player_arm);
ds_map_add(playerWeapons[1], "weap_proj", o_plasma_shell);
ds_map_add(playerWeapons[1], "weap_cooldown", 32);
ds_map_add(playerWeapons[1], "weap_spread", 20);
ds_map_add(playerWeapons[1], "weap_velocity", 5);
ds_map_add(playerWeapons[1], "weap_amount", 7);
ds_map_add(playerWeapons[1], "weap_damage", 0.44);
ds_map_add(playerWeapons[1], "weap_auto", false);
ds_map_add(playerWeapons[1], "weap_sound", snd_laser);
//ds_map_add(playerWeapons[0], "weap_
}
{ /* AR - 2 */
playerWeapons[2] = ds_map_create();
ds_map_add(playerWeapons[2], "weap_sprite", s_player_arm);
ds_map_add(playerWeapons[2], "weap_proj", o_plasma_bullet);
ds_map_add(playerWeapons[2], "weap_cooldown", 31);
ds_map_add(playerWeapons[2], "weap_spread", 7);
ds_map_add(playerWeapons[2], "weap_velocity", 4.2);
ds_map_add(playerWeapons[2], "weap_amount", 1);
ds_map_add(playerWeapons[2], "weap_damage", 0.67);
ds_map_add(playerWeapons[2], "weap_auto", true);
ds_map_add(playerWeapons[2], "weap_sound", snd_laser_ar);
//ds_map_add(playerWeapons[0], "weap_
}
{ /* Railgun - 3 */
playerWeapons[3] = ds_map_create();
ds_map_add(playerWeapons[3], "weap_sprite", s_player_arm);
ds_map_add(playerWeapons[3], "weap_proj", o_plasma_rail);
ds_map_add(playerWeapons[3], "weap_cooldown", 60);
ds_map_add(playerWeapons[3], "weap_spread", 0);
ds_map_add(playerWeapons[3], "weap_velocity", 4.2);
ds_map_add(playerWeapons[3], "weap_amount", 1);
ds_map_add(playerWeapons[3], "weap_damage", 0.86);
ds_map_add(playerWeapons[3], "weap_auto", false);
ds_map_add(playerWeapons[3], "weap_sound", snd_laser_dull);
//ds_map_add(playerWeapons[0], "weap_
}
{ /* Tracker - 4 */
playerWeapons[4] = ds_map_create();
ds_map_add(playerWeapons[4], "weap_sprite", s_player_arm);
ds_map_add(playerWeapons[4], "weap_proj", o_plasma_bullet);
ds_map_add(playerWeapons[4], "weap_cooldown", 21);
ds_map_add(playerWeapons[4], "weap_spread", 27);
ds_map_add(playerWeapons[4], "weap_velocity", 3.4);
ds_map_add(playerWeapons[4], "weap_amount", 2);
ds_map_add(playerWeapons[4], "weap_damage", 1.12);
ds_map_add(playerWeapons[4], "weap_auto", false);
ds_map_add(playerWeapons[4], "weap_sound", snd_laser);
//ds_map_add(playerWeapons[0], "weap_
}
{ /* Launcher - 5 */
playerWeapons[5] = ds_map_create();
ds_map_add(playerWeapons[5], "weap_sprite", s_launcher);
ds_map_add(playerWeapons[5], "weap_proj", o_plasma_shell);
ds_map_add(playerWeapons[5], "weap_cooldown", 75);
ds_map_add(playerWeapons[5], "weap_spread", 2);
ds_map_add(playerWeapons[5], "weap_velocity", 9);
ds_map_add(playerWeapons[5], "weap_amount", 1);
ds_map_add(playerWeapons[5], "weap_damage", 1);
ds_map_add(playerWeapons[5], "weap_auto", false);
ds_map_add(playerWeapons[5], "weap_sound", snd_laser);
//ds_map_add(playerWeapons[0], "weap_
}

current_cooldown = 0;

current_weap = 5;
swapWeap(current_weap);
last_weap = current_weap;

image_speed = 0;
image_index = current_weap;

