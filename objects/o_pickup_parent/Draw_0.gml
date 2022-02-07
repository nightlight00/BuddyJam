
if (sprite_index != noone) {
draw_self(); }

if (!trailPlayer && distance_to_object(o_player) < 16)
{
	draw_set_font(f_font);
	draw_set_color(c_black);
	draw_set_halign(fa_middle);

	draw_text(x, y-(sprite_height*1.5), "E");
}