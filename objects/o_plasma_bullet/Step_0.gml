
/// @description 

// Inherit the parent event
event_inherited();

speed *= 0.97;
if (abs(speed) < 0.8) 
{
	instance_destroy();
}

createDust(1, x, y);