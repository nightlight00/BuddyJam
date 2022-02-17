// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function placeTile(posX, posY, tileType){
	if (!instance_place(posX, posY, tileType)) 
		{
			instance_create_layer(posX, posY, "Floor", tileType);
		}
		/*
	if (tileType == wg_wall)
	{
		if (!instance_place(posX, posY, tileType) && !instance_place(posX, posY, wg_floor) && !instance_place(posX, posY, wg_goal)) 
		{
			with (instance_create_layer(posX, posY, "Instances", o_floor))
			{
				image_index = 1;
			}
		}
	}
	else 
	{
		if (!instance_place(posX, posY, tileType) && !instance_place(posX, posY, wg_goal)) 
		{
			instance_create_layer(posX, posY, "Instances", tileType);
		}
	}
*/
}

function placeWall(posX, posY)
{
	if (!instance_place(posX, posY, o_floor) && !instance_place(posX, posY, o_wall))
	{
		instance_create_layer(posX, posY, "Instances", o_wall);
	}
}

function buildSquare(posX, posY, sizeX, sizeY = sizeX)
{
	for (var i = -(sizeX - 1); i < sizeX; i++)
	{
		for (var i2 = -(sizeY - 1); i2 < sizeY; i2++)
		{
			if (!instance_place(posX + (i * 32), posY + (i2 * 32), o_floor))
			{
				with (instance_create_layer(posX + (i * 32), posY + (i2 * 32), "Floor", o_floor))
				{
					if (room != rm_Boss) {
						image_index = 2;
					}
				}
			}
		}
	}
}

function minorFloor(posX, posY) 
{
	var weight = random(20);
	
	if (weight <= 10) {
		placeTile(posX - global.cellSize, posY, o_floor);
		placeTile(posX + global.cellSize, posY, o_floor);
		placeTile(posX, posY - global.cellSize, o_floor);
		placeTile(posX, posY - global.cellSize, o_floor);
	}
	else if (weight <= 15) {
		var str = irandom_range(1, 4);
		if (irandom(2) == 0) {
			for (var i = -(str - 1); i < str; i++) {
				placeTile(posX + (i * global.cellSize), posY, o_floor);
			}
		}
		else {
			for (var i = -(str - 1); i < str; i++) {
				placeTile(posX, posY + (i * global.cellSize), o_floor);
			}
		}
	}
	else if (weight <= 18) {
		
	}
	else {
		
	}
}
