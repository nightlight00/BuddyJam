
global.playerImmuneFrames--;

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

if (abs(speed) > 0.01)
{
	createDust(2, random_range(bbox_left, bbox_right), bbox_bottom, -speed/3);
	sprite_index = s_player_walk;
}
else {
	sprite_index = s_player_idle;
}
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

if(global.playerHealth < 1)
{
	game_restart();
}


//checks if bleeding
if (global.bleed == true)
{
	if(global.playerHealth <= global.playerHealthMax * 10 / 100)
	{
		global.bleed = false;
	}
	else
	{
		if (global.bleed_counts >= 1)
		{
			if(global.bleed_cool_down-- <= 0)
			{
				global.bleed_counts--;
				global.playerHealth -= global.bleed_damage / 5;
				global.bleed_cool_down = 50;
			}
		}
		else
		{
			global.bleed = false;
		}
	}
}	
		

#endregion
