/// @description Insert description here
// You can write your code in this editor


// Idle draw
if (In_Range) {
	// draw legs seperatly
	draw_sprite(splegs_charge, image_index, x - (image_xscale - 1) * 4, y);
	draw_sprite_ext(splegs_charge, image_index, x + (image_xscale - 1) * 4, y, -1, 1, 0, c_white, 1);
	// draw body
	draw_sprite_ext(spbody_charge, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
else if (alert)
{
	draw_sprite(splegs_walk, image_index, x - (image_xscale - 1) * 4, y);
	draw_sprite_ext(splegs_walk2, image_index, x + (image_xscale - 1) * 4, y, 1, 1, 0, c_white, 1);
	// draw body
	draw_sprite_ext(spbody_walk, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
else {
	// draw legs seperatly
	draw_sprite(splegs_idle, image_index, x - (image_xscale - 1) * 4, y);
	draw_sprite_ext(splegs_idle, image_index, x + (image_xscale - 1) * 4, y, -1, 1, 0, c_white, 1);
	// draw body
	draw_sprite_ext(spbody_idle, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

// : debug : \\

draw_set_font(f_font);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(x, y-10, string(clamp(enemydamage / clamp(distance_to_object(o_player), 0, 50), 0, global.playerHealth / 2)));
draw_set_halign(fa_left);