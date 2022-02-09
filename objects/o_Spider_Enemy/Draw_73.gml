/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_font);

draw_set_color(c_red);
draw_text_ext(x, y-12, string(enemydamage / distance_to_object(o_player)), 3, 32);

draw_set_color(c_green);
draw_text_ext(x, y+13, string(Hp), 3, 32);
