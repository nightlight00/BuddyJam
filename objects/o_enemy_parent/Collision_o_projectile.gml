hitpoints -= other.proj_damage;
other.penetrate--;

if (hitpoints < 0) {
	enemyDying = true;
	ai0 = 0; 
}