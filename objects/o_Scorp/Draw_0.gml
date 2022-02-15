
if (o_player.x > x) {
	safe_xscale = -1; }
else {
	safe_xscale = 1; }

// Idle draw
if (attacking) {
	if (attack_choice == 0) {
		sprite_index = s_scorp_laser;
	}
	else {
		sprite_index = s_scorp_shot;
	}
}
else if (alert)
{
	sprite_index = s_scorp_walk
}
else {
	sprite_index = s_scorp;
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * safe_xscale, image_yscale, 0, c_white, 1);