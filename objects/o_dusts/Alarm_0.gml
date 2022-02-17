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
}