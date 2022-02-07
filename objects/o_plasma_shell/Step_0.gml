/// @description 

// Inherit the parent event
event_inherited();

speed *= 0.94;
if (abs(speed) < 0.5) 
{
	instance_destroy();
}
