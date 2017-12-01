/// @description 
event_inherited();

//spawn enemy
if(timeToSpawn <= 60 && timeToSpawn > 0)
{
	timeToSpawn -= 1;
	if(timeToSpawn == 0)
	{
		spawned = true;
	}
}

