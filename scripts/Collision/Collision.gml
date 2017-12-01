//collision with platforms

if(place_meeting(x + hSpeed, y, oCollision))
{
	while(!place_meeting(x + sign(hSpeed), y, oCollision))
	{
		x = x + sign(hSpeed);
	}
	hSpeed = 0;
}


if(place_meeting(x, y + vSpeed, oCollision))
{
	while(!place_meeting(x, y + sign(vSpeed), oCollision))
	{
		y = y + sign(vSpeed);
	}
	vSpeed = 0;
	onGround = true;
}

x += hSpeed;
y += vSpeed;