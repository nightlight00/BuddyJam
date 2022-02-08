/// @description 
switch (dust_style) {
	case 1: // plama dust
		image_index = irandom(3);
		image_speed = 0;
		image_alpha = 0.7;
		sprite_index = s_plasmadust;
		dust_lifetime = 14;
		if (speed == 0) {
			speed = 1.1; }
		image_xscale = random_range(0.7, 1);
		image_yscale = image_xscale;
		break;
	case 2: // dust dust
		image_index = irandom(4);
		image_speed = 0;
		image_alpha = 0.9;
		sprite_index = s_dustdust;
		dust_lifetime = irandom_range(19, 23);
		if (speed == 0) {
			speed = 1.1; }
		image_xscale = random_range(0.7, 1);
		image_yscale = image_xscale;
		break;
}