//collision with platforms

if(place_meeting(x + hSpeedPush, y, oCollision))
{
	while(!place_meeting(x + sign(hSpeedPush), y, oCollision))
	{
		x = x + sign(hSpeedPush);
	}
	hSpeedPush = 0;
}


if(place_meeting(x, y + vSpeedPush, oCollision))
{
	while(!place_meeting(x, y + sign(vSpeedPush), oCollision))
	{
		y = y + sign(vSpeedPush);
	}
	vSpeedPush = 0;
}

x += hSpeedPush;
y += vSpeedPush;