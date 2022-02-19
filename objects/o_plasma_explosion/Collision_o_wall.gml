if (image_index > 3 && room != rm_Boss) {
	with (other)
	{
		instance_create_layer(x, y,  "Floor", o_floor);
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