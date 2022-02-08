
#region Movement

if (keyboard_check(ord("A")) || keyboard_check(ord("D")))
{
	if (keyboard_check(ord("A"))) {
		hspeed -= speed_increment; }
	else {
		hspeed += speed_increment; }
}
else 
{
	hspeed *= 0.82;
	if (abs(hspeed) < 0.2) {
		hspeed = 0; }
}
if (keyboard_check(ord("W")) || keyboard_check(ord("S")))
{
	if (keyboard_check(ord("W"))) {
		vspeed -= speed_increment; }
	else {
		vspeed += speed_increment; }
}
else 
{
	vspeed *= 0.82;
	if (abs(vspeed) < 0.2) {
		vspeed = 0; }
}
hspeed = clamp(hspeed, -speed_max, speed_max);
vspeed = clamp(vspeed, -speed_max, speed_max);

var box = bbox_right;
if (hspeed < 0) { box = bbox_left; }
if (collision_point(box + hspeed, bbox_top, o_wall, false, true) || collision_point(box + hspeed, bbox_bottom, o_wall, false, true)) {
	hspeed = 0; }
box = bbox_top;
if (vspeed > 0) { box = bbox_bottom; }
if (collision_point(bbox_right, box + vspeed, o_wall, false, true) || collision_point(bbox_left, box + vspeed, o_wall, false, true)) {
	vspeed = 0; }

#endregion
