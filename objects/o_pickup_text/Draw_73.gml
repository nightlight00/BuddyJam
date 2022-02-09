
draw_set_font(f_font);
draw_set_color(c_black);
draw_set_halign(fa_middle);

if (pickupTime >= 10 || pickupTime mod 2 == 0) {
	draw_text_ext(x, y, item_name, 10, 100); }

draw_set_halign(fa_left);