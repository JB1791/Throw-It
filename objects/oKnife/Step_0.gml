/// @description 

//collision with enemy
if(place_meeting(x, y, oEnemyParent))
{
	with(other)
	{
		instance_destroy();
	}
}


if(playerFacing == "right")
{
	x -= knifeDir;	
	image_angle += 10;
}
if(playerFacing == "left")
{
	x += knifeDir;
	image_angle += 10;
}


