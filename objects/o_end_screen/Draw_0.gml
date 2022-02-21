/// @description 
draw_sprite_ext(s_endscreen, 0, 0, 0, 1, 1, 0, c_white, 1);

draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(view_wport[0]/2, 32, "First flower culled . . .");
draw_text(view_wport[0]/2, view_hport[0]-32, "Press any key to quit");
	
draw_set_halign(fa_left);
draw_sprite_ext(s_test, 0, 0, 0, display_get_gui_width() / 8, display_get_gui_height() / 8, 0, c_white, image_alpha);