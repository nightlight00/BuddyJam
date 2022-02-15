///Worm



//set worm scale
image_xscale = 0.5;
image_yscale = image_xscale;

				//Worm Animations
///////////////////////////////////////////////////////
//////////////////////////////////////////////////////




///////////////////////////////////////////////////////
//////////////////////////////////////////////////////


//damage cool down
Damage_cd = 5;

enemydamage = (global.enemyLevel - 1);

wait_cd = 0;

//set Worm speed
localspd = 0.6;

//are we chasing the player?
alert = false;

//distance to start chasing the player
alert_dis = 300;

//attack distance
attack_dis = 0;

//create path resource
path = path_add();

//set delay for calculating path
calc_path_delay = 10;

//set a to,er fpr wjem we calc a path
calc_path_timer = irandom(15);

//are we in range to attack
In_Range = false;

//does enemy cause bleed damage
Can_After_Damage = false;




