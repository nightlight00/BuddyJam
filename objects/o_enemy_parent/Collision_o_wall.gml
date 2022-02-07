
if (image_xscale > 1.7)
{
	with (other)
	{
		instance_create_layer(x, y,  "Instances", o_floor);
		placeWall(x - global.cellSize, y);
		placeWall(x + global.cellSize, y);
		placeWall(x, y + global.cellSize);
		placeWall(x, y - global.cellSize);
		placeWall(x - global.cellSize, y - global.cellSize);
		placeWall(x + global.cellSize, y - global.cellSize);
		placeWall(x + global.cellSize, y + global.cellSize);
		placeWall(x - global.cellSize, y + global.cellSize);
	}
	instance_destroy(other);
}