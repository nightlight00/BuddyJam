
//set spider scale
image_xscale = 0.6;
image_yscale = image_xscale;

xscaler = 1;

				//Spider Animations
///////////////////////////////////////////////////////
//////////////////////////////////////////////////////

state= s_scorp;

angle = 0;

mode = 0;

attack_mode = 0;

shoot_timer = 0;

laser_timer =60;
laser_charge = 50;

done = true;
i = 0;


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
