//set spider scale
image_xscale = 0.5;
image_yscale = image_xscale;

//spider color
image_blend = choose(noone, c_orange);

				//Spider Animations
///////////////////////////////////////////////////////
//////////////////////////////////////////////////////

//show if spider is hurt
hurt = spidey_hurt;
Walk = spidey_walk;
Idle = spidey_idle;
charge = spidey_charge;




///////////////////////////////////////////////////////
//////////////////////////////////////////////////////




MaxHp += 10 * global.enemyLevel / 5;

Hp = MaxHp;

//damage cool down
Damage_cd = 5;

enemydamage = global.enemyLevel * 5;

//set spider speed
localspd = 2;

//are we chasing the player?
alert = false;

//distance to start chasing the player
alert_dis = 200;

//attack distance
attack_dis = 50;

//create path resource
path = path_add();

//set delay for calculating path
calc_path_delay = 10;

//set a to,er fpr wjem we calc a path
calc_path_timer = irandom(30);

In_Range = false;



