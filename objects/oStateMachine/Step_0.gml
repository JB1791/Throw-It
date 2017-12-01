/// @description 

switch (state)
{
	case states.idle:
		//movement setup
		hSpeed = dir * moveSpeed;
		vSpeed += grav;
		//move
		Collision();
		//switch states
		if(collision_circle(other.x, other.y, 96, oPlayer, false, true))
			{state = states.follow;}
	break;
	case states.follow:
		//movement
		with(other){
		move_towards_point(oPlayer.x, oPlayer.y, hSpeed);
		}
		//switch states
		if(collision_circle(x, y, 32, oPlayer, false, true))
			{state = states.attack;}
	
	break;
	case states.attack:
		//attack aniamtion
		
		//health damge
		
		//switch states
		with(oPlayer)
		{
			playerHealth -= 10;
		}
	
	break;
	case states.died:
		//destory enemy
		instance_destroy(other);	
		state = states.died;
	break;
}
