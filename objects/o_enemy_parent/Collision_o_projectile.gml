/// @description Insert description here
// You can write your code in this editor
if (Hp <= 0)
{
	instance_destroy();
}
Hp -= other.proj_damage;
sprite_index = spidey_hurt;

other.penetrate -= 1;

