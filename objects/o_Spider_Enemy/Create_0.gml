//set spider scale
image_xscale = 0.5;
image_yscale = image_xscale;
image_blend = choose(noone, c_orange);

				//Spider Animations
///////////////////////////////////////////////////////
//////////////////////////////////////////////////////

//show if spider is hurt
hurt = spidey_hurt;
Walk = spidey_walk;
Idle = spidey_idle;




///////////////////////////////////////////////////////
//////////////////////////////////////////////////////

Damage_cd = 5;

//set spider speed
speed = 0;

//Set Spider Health
MaxHp = 20;

//are we chasing the player?
alert = false;

//distance to start chasing the player
alert_dis = 300;

//attack distance
attack_dis = 6;

//create path resource
path = path_add();

//set delay for calculating path
calc_path_delay = 10;

//set a to,er fpr wjem we calc a path
calc_path_timer = irandom(30);

