if (global.worldgen_stage == 7)
{
	draw_set_font(Font1);
	if (instance_number(wg_eggsack) < 5)
	{
		draw_text(3, 3, "failed");
	}
	else 
	{
		draw_text(3, 3, string(instance_number(wg_eggsack)) + " sacs spawned");
		for (var i = 0; i < instance_number(wg_eggsack); i++)
		{
		//	instance_find(wg_eggsack, i)
			draw_text(3, 15+(12*i), string(instance_find(wg_eggsack, i).x) + "x " + string(instance_find(wg_eggsack, i).y) + "y"
				+ " : " + instance_find(wg_eggsack, i).contents);
		}
		
		draw_text(200, 3, string(mouse_x) + "x " + string(mouse_y) + "y");
		var near = instance_nearest(mouse_x, mouse_y, all);
		draw_text(200, 15, string(near.image_index));
		
		draw_text(3, 450, "current fps : " + string(fps));
		draw_text(3, 465, "average fps : " + string(aveFPS));
	}
}