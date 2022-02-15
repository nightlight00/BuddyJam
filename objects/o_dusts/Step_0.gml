
switch (dust_style) {
	case 1: //plasma dusts
		image_angle += speed * 4;
		speed *= 0.97;
		image_alpha -= 0.05;
		break;
	case 2: // dust dust
		hspeed *= 0.98;
		vspeed -= 0.03;
		image_alpha -= 0.05;
		image_angle += hspeed * 4;
		break;
	case 3: // heart dust
		vspeed -= 0.06;
		hspeed *= 0.96;
		image_alpha -= 0.02;
		break;
	case 4: // falling leaves
		hspeed = sin(current_time / 250);
		image_angle = hspeed * 50;
		if (dust_lifetime < 160) {
			image_alpha -= 0.015;
			if (image_alpha <= 0.1) {
				instance_destroy();
			}
		}
		break;
	case 5: // egg dust
		hspeed *= 0.99;
		vspeed += 0.056;
		image_alpha -= 0.017;
		image_angle += hspeed * 3;
		break;
}

dust_lifetime--;
if (dust_lifetime < 0) {
	instance_destroy(); }