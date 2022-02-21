if (s_ambience-- <= 0)
	{
		audio_play_sound_at(ambience, x+ 20, y + 20, 0, 100, 100,  1, false, 1);
		s_ambience = irandom_range(3000, 6000);
	}
global.playerImmuneFrames--;

if (draw_helper++ > 5) {
	draw_helper_index++;
	draw_helper = 0;
}


audio_listener_position(x, y, 0);
audio_set_master_gain(0, global.masterVolume);

if keyboard_check(vk_escape)
{
	if instance_exists(o_pause_menu)
	{
		
	}
	else
	{
	instance_create_layer(x, y, "Enemy", o_pause_menu)
	return;
	}
}

// handle player death
if(global.playerHealth <= 0)
{
	player_dead = true;
	if (!instance_exists(o_death_screen)) {
		speed = 0;
		image_index = 0;
		sprite_index = s_player_dead;
		instance_create_layer(x, y, "Instances", o_death_screen); 
	}
	
	return; // prevent rest of code from running
}

#region Movement

if (keyboard_check(ord("A")) || keyboard_check(ord("D")))
{
	if (keyboard_check(ord("A"))) {
		hspeed -= speed_increment; }
	else {
		hspeed += speed_increment; }
}
else 
{
	hspeed *= 0.82;
	if (abs(hspeed) < 0.2) {
		hspeed = 0; }
}
if (keyboard_check(ord("W")) || keyboard_check(ord("S")))
{
	if (keyboard_check(ord("W"))) {
		vspeed -= speed_increment; }
	else {
		vspeed += speed_increment; }
}
else 
{
	vspeed *= 0.82;
	if (abs(vspeed) < 0.2) {
		vspeed = 0; }
}
hspeed = clamp(hspeed, -speed_max, speed_max);
vspeed = clamp(vspeed, -speed_max, speed_max);

var box = bbox_right;
if (hspeed < 0) { box = bbox_left; }
if (collision_point(box + hspeed, bbox_top, o_wall, false, true) || collision_point(box + hspeed, bbox_bottom, o_wall, false, true)) {
	hspeed = 0; }
box = bbox_top;
if (vspeed > 0) { box = bbox_bottom; }
if (collision_point(bbox_right, box + vspeed, o_wall, false, true) || collision_point(bbox_left, box + vspeed, o_wall, false, true)) {
	vspeed = 0; }
	
	//teleporter
	var box = bbox_right;
if (hspeed < 0) { box = bbox_left; }
if (collision_point(box + hspeed, bbox_top, o_goal, false, true) || collision_point(box + hspeed, bbox_bottom, o_wall, false, true)) {
	hspeed = 0; }
box = bbox_top;
if (vspeed > 0) { box = bbox_bottom; }
if (collision_point(bbox_right, box + vspeed, o_goal, false, true) || collision_point(bbox_left, box + vspeed, o_wall, false, true)) {
	vspeed = 0; }

if (abs(speed) > 0.01)
{
	createDust(2, random_range(bbox_left, bbox_right), bbox_bottom, -speed/3);
	sprite_index = s_player_walk;
}
else {
	sprite_index = s_player_idle;
}

#endregion

#region Pathfinding

if (PathCoolDown-- <= 0)
{
	/////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////
		////// path code////////////////////////////////////////
		
		
		//create motion planning grid
		global.mp_grid = mp_grid_create(x - 300, y - 300, room_width / 32, room_height /32, 16, 16);

		//add solid instances to grid
		mp_grid_add_instances(global.mp_grid, o_wall, true);
		
		///////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////
		PathCoolDown = 100;
}

#endregion
		
		
#region Debuffs

// reset max speed before due to numerous speed lowering debuffs
speed_max = 2.3

// poison debuff - lowers speed
if (poison) {
	if (poison_timer-- > 0) {
		speed_max -= 1.3;
	}
	else {
		poison = false;
	}
}

// encumbered debuff - halves speed
if (encumbered) {
	if (encumber_timer-- > 0) {
		speed_max /= 2;
	}
	else {
		encumbered = false;
	}
}

// bleeding debuff - drains health when above 10% of max
if (global.bleed) {
	if (global.playerHealth <= global.playerHealthMax * 10 / 100) {
		global.bleed = false; }
	else {
		if (global.bleed_counts > 0) {
			
			if (global.bleed_cool_down-- < 0) {
				global.bleed_cool_down = 25;
				global.bleed_counts--
				global.playerHealth -= global.bleed_damage;
			}
			if (global.bleed_counts <= 0)
			{
				global.bleed = false;
			}
			
		}
	}
}
		
#endregion
		