/// @description 

var fallSpeed = 3;
var hit = false;

if(place_meeting(x,y, oPlayer))
{
	hit = true;
}else{hit = false;}
if(y < room_height && hit){
	y += fallSpeed;
}else
{y = ystart;}
