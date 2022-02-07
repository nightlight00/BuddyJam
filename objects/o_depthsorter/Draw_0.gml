
var inst_num = instance_number(o_depthhelper);
var dsgrid = ds_depthgrid;

ds_grid_resize(dsgrid, 2, inst_num)


var yy = 0; with (o_depthhelper)
{
	dsgrid[# 0, yy] = id;
	dsgrid[# 1, yy] = y;
	yy++;
}

ds_grid_sort(dsgrid, 1, true);

var inst, yy = 0; repeat (inst_num)
{
	inst = dsgrid[# 0, yy];	
	with (inst)
	{
		event_perform(ev_draw, 0);
	}
	yy++;
}
