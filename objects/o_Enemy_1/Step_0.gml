CheckForPlayer();
if (enemyDying) // do this for custom death animation
{
	ai0++;
	if (ai0 > 20) {
		instance_destroy();
	}
	return; // prevents rest of code from running	
}
