/// @description Insert description here
// You can write your code in this editor
	//Walk and Idle


draw_set_font(f_font);
draw_set_color(c_black);
draw_text(x, y-10, string(clamp(enemydamage / clamp(distance_to_object(o_player), 0, 50), 0, global.playerHealth / 2)));
