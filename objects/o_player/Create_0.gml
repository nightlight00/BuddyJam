/// @description 

global.playerHealthMax = 17;
global.playerHealth = global.playerHealthMax;
global.playerImmuneFrames = 20;
global.playerImmuneFramesReset = 35;

speed_increment = 0.18;
speed_max = 2.3;

instance_create_layer(x, y, "Instances", o_weapon);
instance_create_layer(x, y, "Instances", o_player_ui);
