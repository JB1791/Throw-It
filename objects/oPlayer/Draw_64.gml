/// @description 

//debug stuuf
if(debug)
{
	draw_text(10, 10, "hSpeed " + string(hSpeed));
	draw_text(10, 30, "vSpeed " + string(vSpeed));
	draw_text(10, 50, "x  " + string(x));
	draw_text(10, 70, "y  " + string(y));
	draw_text(10, 90, "facing " + string(facing));
	draw_text(10, 110, "health" + string(playerHealth));
	with(oBossEnemy){
		draw_text(10, 130, "spawn time " + string(timeToSpawn));
		draw_text(10, 150, "spawn  " + string(spawned));
	}
	with(oEnemy)
	{
		draw_text(10, 170, "enemy health " + string(enemyHealth));
	}
	with(oBossEnemy)
	{
		draw_text(10, 190, "enemy state" + string(state));
	}
	with(oMainControls){
		draw_text(10, 210, "splashTime " + string(splashTime));	
	}
	/*
	with(oStateMachine){
		draw_text(10, 170, "state = " + string(state));
	}*/
}

//draw the health bar and stuff




