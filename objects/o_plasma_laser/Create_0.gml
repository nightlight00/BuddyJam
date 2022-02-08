/// @description 

// Inherit the parent event
event_inherited();

direction = point_direction(x, y, mouse_x, mouse_y);

for (var i = 0; i < 500; i++)
{
	if (!collision_point(x, y, o_wall, true, false)) {
		x += lengthdir_x(1,direction);
		 y += lengthdir_y(1,direction);
	}
}
speed = 0;