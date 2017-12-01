/// @description 

//init movement var
hSpeed = dir * enemySpeed;
vSpeed += grav;

//collision with enemyWall to move back and forth
if(place_meeting(x + hSpeed, y, oEnemyWall))
{
	while(!place_meeting(x + sign(hSpeed), y, oEnemyWall))
	{
		x += sign(hSpeed);
	}
	hSpeed = 0;
	dir *= -1;
}
//on the platform
if(place_meeting(x, y + vSpeed, oCollision))
{
	while(!place_meeting(x, y + sign(vSpeed), oCollision))
	{
		y += sign(vSpeed);
	}
	vSpeed = 0;
}

//collision with the player

if(place_meeting(x, y, oPlayer))
{
	with(other)
	{instance_destroy();}
}

//coliision with knife
if(place_meeting(x, y, oKnife))
{
	with(other)
	{
		enemyHealth -= oKnife.knifeDamage;
		if(enemyHealth <= 0)
		{
			instance_destroy();
		}
	}
}

//update movement
x += hSpeed;
y += vSpeed;

//the way the sprite is facing
if(dir == -1)
{sprite_index = sEnemyLeft;}
else{sprite_index = sEnemyRight;}