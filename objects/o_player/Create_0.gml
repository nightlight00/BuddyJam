/// @description 

player_dead = false;
safe_dir = 0;

PathCoolDown = 0;
speed_increment = 0.18;
speed_max = 2.3;

draw_helper = 0;
draw_helper_index = 0;

global.playerHealthMax = 17; // 17
global.playerHealth = global.playerHealthMax
global.playerImmuneFrames = 20;
global.playerImmuneFramesReset = 35;

//after damage
global.bleed = false;
global.bleed_counts = 0;
global.bleed_damage = 0;
global.bleed_cool_down = 0;


instance_create_layer(x, y, "Instances", o_weapon);
instance_create_layer(x, y, "Instances", o_player_ui);