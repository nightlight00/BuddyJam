
switch (dust_style) {
	case 1: //plasma dusts
		image_angle += speed * 4;
		speed *= 0.97;
		image_alpha -= 0.05;
		break;
	case 2:
		hspeed *= 0.98;
		vspeed -= 0.03;
		image_alpha -= 0.05;
		image_angle += hspeed * 4;
		break;
}

dust_lifetime--;
if (dust_lifetime < 0) {
	instance_destroy(); }