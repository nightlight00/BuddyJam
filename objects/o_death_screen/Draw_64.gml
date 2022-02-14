
draw_sprite_ext(s_test, 0, 0, 0, display_get_gui_width() / 8, display_get_gui_height() / 8, 0, c_black, image_alpha);

//draw options
draw_set_font(f_font);
draw_set_valign(fa_top);
draw_set_valign(fa_left);

//dynamically get width adn height of menu
var _new_width = 0;
for (var i = 0; i < op_length; i++)
{
	var _op_w = string_width(option[menu_level, i])
	_new_width = max(_new_width, _op_w);
}
width = _new_width + op_border*2;

height = op_border*2 + string_height(option[menu_level, 0]) + (op_length-1)*op_space;


//draw menu background
draw_sprite_ext(sprite_index, image_index, 32, 64, width/sprite_width, height/sprite_height, 0, c_white, .75);



for (var i = 0; i < op_length; i++)
{
	var _c = c_white;
	if pos == i {_c = c_yellow}
	draw_text_color(32 + op_border, 64 + op_border + op_space * i , option[menu_level, i], _c, _c, _c, _c, 1);
}
