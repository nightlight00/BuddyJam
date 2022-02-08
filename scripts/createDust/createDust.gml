// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createDust(dustType, posX = x, posY = y, spd = 0, dir = 0, scale = 1) {
	//var d = instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_left), "Instances", o_dusts);
	var d = instance_create_layer(posX, posY, "Instances", o_dusts);
	d.dust_style = dustType;
	if (dir == 0) {
		d.direction = direction; } 
	else {
		d.direction = dir; }
	d.speed = spd;
	d.image_xscale = scale;
	d.image_yscale = scale;
}