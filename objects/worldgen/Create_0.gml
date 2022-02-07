
randomise();

global.floorCount = 0;
global.worldgen_length = 128;
global.worldgen_height = 128;
global.worldgen_max = global.worldgen_length * global.worldgen_height;

global.worldgen_stage = 0;

global.time = 0;
aveFPS = fps_real;

global.portalX = 0;
global.portalY = 0;

x = room_width/2;
y = room_height/2;

placeTile(x, y, wg_goal);

for (var i = -7; i < 7; i++) 
{
	placeTile(x+i, y, wg_floor);
	placeTile(x, y+i, wg_floor);
}
placeTile(x-1, y-1, wg_floor);
placeTile(x+1, y+1, wg_floor);
placeTile(x-1, y+1, wg_floor);
placeTile(x+1, y-1, wg_floor);

/*
instance_create_layer(room_width/2 - 5, room_height/2, "Instances", walker);
instance_create_layer(room_width/2 + 5, room_height/2, "Instances", walker);
instance_create_layer(room_width/2, room_height/2 + 5, "Instances", walker);
instance_create_layer(room_width/2, room_height/2 - 5, "Instances", walker);
