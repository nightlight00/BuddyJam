
var dir = point_direction(x, y, mouse_x, mouse_y), drawn = false;
if (dir >= 90 && dir < 270) {
	image_xscale = -1; }
else {
	image_xscale = 1;
}

if (dir >= 180) {
	draw_self();
	drawn = true;
}

draw_sprite_ext(o_weapon.sprite_index, o_weapon.image_index, x + lengthdir_x(2, dir), 
y - 4 + lengthdir_y(1, dir), 1, image_xscale, dir, c_white, 1);

if (!drawn) {
	draw_self();
}