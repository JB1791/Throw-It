/// @description 

//set up movement
var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
hSpeed = lengthdir_x(moveSpeed, dir);
vSpeed = lengthdir_y(moveSpeed, dir);

Collision();

pushCollision();

//adding friction
if(!place_meeting(x, y, oEnemy))
{
	hSpeedPush = lerp(hSpeedPush, 0, 0.1);
	vSpeedPush = lerp(hSpeedPush, 0, 0.1);
}

//collide with ground

//knife damage
if(place_meeting(x, y, oKnife))
{
	enemyHealth -= 10;
	instance_destroy(other);
}

//collide with player
if(place_meeting(x, y, oPlayer))
{
	with(oPlayer)
	{playerHealth -= 10;}
}

//enemy health
if(enemyHealth <= 0 )
{
	instance_destroy();
}
	