//Set Spider Health
image_xscale = 0.5;
image_yscale = image_xscale;
spd = 0;
MaxHp = 20;

//are we chasing the player?
alert = false;

//distance to start chasing the player
alert_dis = 100;

//attack distance
attack_dis = 6;

//create path resource
path = path_add();

//set delay for calculating path
calc_path_delay = 30;

//set a to,er fpr wjem we calc a path
calc_path_timer = irandom(60);

roam_wait = 30;