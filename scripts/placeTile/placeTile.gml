// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information




function placeBuilding(posX, posY) {
	
	var chance = irandom(38);
	
	if (chance <= 15) // 3x3
	{
		placeTile(posX-1, posY-1, wg_floor);
		placeTile(posX-1, posY, wg_floor);
		placeTile(posX-1, posY+1, wg_floor);
		placeTile(posX, posY-1, wg_floor);
		placeTile(posX, posY, wg_floor);
		placeTile(posX, posY+1, wg_floor);
		placeTile(posX+1, posY-1, wg_floor);
		placeTile(posX+1, posY, wg_floor);
		placeTile(posX+1, posY+1, wg_floor);
	}
	else if (chance <= 25) // plus
	{
		placeTile(posX-1, posY, wg_floor);
		placeTile(posX+1, posY, wg_floor);
		placeTile(posX, posY-1, wg_floor);
		placeTile(posX, posY+1, wg_floor);
	}
	else if (chance <= 28) 
	{
		var lng = irandom_range(2, 5);
		for (var i = -lng; i < lng; i++) 
		{
			placeTile(posX+i, posY, wg_floor);
			placeTile(posX, posY+i, wg_floor);
		}
		placeTile(posX-1, posY-1, wg_floor);
		placeTile(posX+1, posY+1, wg_floor);
		placeTile(posX-1, posY+1, wg_floor);
		placeTile(posX+1, posY-1, wg_floor);

	}
	else if (chance <= 31)
	{
		var lng = irandom_range(2, 5), hei = irandom_range(1, 3);
		for (var l = -lng; l < lng; l++)
		{
			for (var h = -hei; h < hei; h++)
			{
				placeTile(posX+l, posY+h, wg_floor);
			}
		}
	}
	else if (chance <= 38)
	{
		for (var i = 0; i < irandom_range(5, 8); i++) 
		{
			placeTile(posX, posY-i, wg_floor);
		}
	}
	
}