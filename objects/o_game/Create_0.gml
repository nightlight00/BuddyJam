
randomise();

global.cellSize = 32;
global.mp_grid = 0;
global.enemyLevel = irandom_range(0, 60);

instance_create_layer(x, y, "Instances", o_worldgen);