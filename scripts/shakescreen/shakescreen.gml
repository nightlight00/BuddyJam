// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shakescreen(time, magnitude){
	with (o_camera)
	{
		if ((time + magnitude) / 2 > (screenshake_time + screenshake_magnitude) / 2)
		{
			screenshake_time = time;
			screenshake_magnitude = magnitude;
		}
	}
}