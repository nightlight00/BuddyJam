/// @description 
image_speed = 0;

switch (dust_style) {
	case 1: // plama dust
		image_index = irandom(3);
		image_alpha = 0.7;
		sprite_index = s_plasmadust;
		dust_lifetime = 14;
		if (speed == 0) {
			speed = 1.1; }
		if (image_xscale == 1) {
			image_xscale = random_range(0.7, 1);
			image_yscale = image_xscale;
		}
		break;
	case 2: // dust dust
		image_index = irandom(4);
		image_alpha = 0.9;
		sprite_index = s_dustdust;
		dust_lifetime = irandom_range(19, 23);
		if (speed == 0) {
			speed = 1.1; }
		if (image_xscale == 1) {
			image_xscale = random_range(0.7, 1);
			image_yscale = image_xscale;
		}
		break;
	case 3: // heal dust
		sprite_index = s_heartdust;
		image_index = irandom(4);
		image_alpha = 0.9;
		if (image_xscale == 1) {
			image_xscale = random_range(0.7, 1.2);
			image_yscale = image_xscale;
		}
		dust_lifetime = random_range(20, 25);
		if (speed == 0) {
			speed = 0.9;
		}
		break;
	case 4: // falling leaves
		sprite_index = s_leafdust;
		image_index = irandom(4);
		if (image_xscale == 1) {
			image_xscale = random_range(0.7, 1.05);
			image_yscale = image_xscale;
		}
		image_xscale = choose(-image_xscale, image_xscale);
		image_yscale = choose(-image_yscale, image_yscale);
		dust_lifetime = 360;
		vspeed = 0.8;
		hspeed = random_range(-0.8, 0.8);
		break;
	case 5: // break egg
		sprite_index = s_eggdust;
		image_index = irandom(4);
		if (image_xscale == 1) {
			image_xscale = random_range(0.9, 1);
			image_yscale = image_xscale;
		}
		if (speed == 0) {
			vspeed = random(-0.6) - 0.6;
			hspeed = random_range(-0.9, 0.9);
		}
		dust_lifetime = 60;
		image_angle = random(360);
		break;
	case 6: // boss dust
		image_index = irandom(3);
		image_alpha = 0.6;
		sprite_index = s_plasmadust;
		dust_lifetime = 18;
		if (speed == 0) {
			speed = 1.1; }
		if (image_xscale == 1) {
			image_xscale = random_range(0.7, 1);
			image_yscale = image_xscale;
		}
		break;
	case 7: // flower dust
		image_index = irandom(3);
		sprite_index = s_flowerdust;
		image_alpha = 0.9;
		if (image_xscale == 1) {
			image_xscale = random_range(0.8, 1.05);
			image_yscale = image_xscale;
		}
		dust_lifetime = 20;
		break;
	case 8: // menu dust falling
		image_index = irandom(6);
		sprite_index = s_menudust;
		image_alpha = random_range(0.5, 0.8);
		if (image_xscale == 1) {
			image_xscale = random_range(0.8, 1.2);
			image_yscale = image_xscale;
		}
		if (speed == 0) {
			hspeed = random_range(1, 3);
			vspeed = random_range(1, 3);
		}
		dust_lifetime = 999;
		break;
	case 9: // wall break
		image_index = irandom(5);
		sprite_index = s_wallbreakdust;
		if (image_xscale == 1) {
			image_xscale = random_range(0.9, 1.2);
			image_yscale = image_xscale;
		}
		if (speed == 0) {
			vspeed = random(-0.6) - 0.6;
			hspeed = random_range(-0.9, 0.9);
		}
		dust_lifetime = 90;
		break;
	case 10: // worm death
	case 11: // scorp death
		// redo this to only do proper sprites
		if (dust_style == 11) { // scorp
			sprite_index = s_enemscorpdust;
			image_index = irandom(5);
		} else { // default to worm
			sprite_index = s_enemwormdust;
			image_index = irandom(3);
		}
		
		if (image_xscale == 1) {
			image_xscale = random_range(0.8, 1.1);
			image_yscale = image_xscale;
		}
		if (speed == 0) {
			vspeed = random(-0.6) - 0.4;
			hspeed = random_range(-1.2, 1.2);
		}
		dust_lifetime = 60;
		image_angle = random(360);
		break;
}




		