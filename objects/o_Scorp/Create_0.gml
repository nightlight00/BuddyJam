
//set spider scale
image_xscale = 0.6;
image_yscale = image_xscale;


				//Spider Animations
///////////////////////////////////////////////////////
//////////////////////////////////////////////////////

//show if spider is hurt
state= s_scorp;

angle = 0;


///////////////////////////////////////////////////////
//////////////////////////////////////////////////////

//damage cool down
Damage_cd = 5;

attacking = false;
attack_timer = 0;

enemydamage = global.enemyLevel * 5;

attack_dir = 0;

//set spider speed
localspd = 1;

//are we chasing the player?
alert = false;

//distance to start chasing the player
alert_dis = 210;

//attack distance
attack_dis = 10;

//create path resource
path = path_add();

//set delay for calculating path
calc_path_delay = 10;

//set a to,er fpr wjem we calc a path
calc_path_timer = irandom(30);

//if in range to attack the player
In_Range = false;
