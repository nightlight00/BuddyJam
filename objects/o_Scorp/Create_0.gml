

//set spider scale
image_xscale = 0.5;
image_yscale = image_xscale;

//spider color
image_blend = choose(noone, c_orange);
;

				//Spider Animations
///////////////////////////////////////////////////////
//////////////////////////////////////////////////////

//show if spider is hurt


///////////////////////////////////////////////////////
//////////////////////////////////////////////////////

//damage cool down
Damage_cd = 5;

attacking = false;
attack_choice = -1;
attack_timer = 0;

enemydamage = global.enemyLevel * 5;

MaxHp = 20 + ((global.enemyLevel - 1) * 4);
Hp = MaxHp;

attack_dir = 0;

safe_xscale = 1;

//set spider speed
localspd = 2;

//are we chasing the player?
alert = false;

//distance to start chasing the player
alert_dis = 210;

//attack distance
attack_dis = 130;

//create path resource
path = path_add();

//set delay for calculating path
calc_path_delay = 10;

//set a to,er fpr wjem we calc a path
calc_path_timer = irandom(30);

//if in range to attack the player
In_Range = false;
