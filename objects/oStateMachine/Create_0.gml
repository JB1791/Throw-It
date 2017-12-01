/// @description 

enum states
{
	idle,
	follow,
	attack,
	died
}
state = states.idle;

hSpeed = 0;
vSpeed = 0;
moveSpeed = random_range(0.5, 2);
enemyHealth = 10;
grav = 0.3;
dir = -1;