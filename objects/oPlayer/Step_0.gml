//debug input
if(keyboard_check_direct(vk_tab)){debug = !debug;}

//player input
leftInput = keyboard_check_direct(ord("A"));
rightInput = keyboard_check_direct(ord("D"));
jumpInput = keyboard_check_pressed(ord("W"));
runInput = keyboard_check(vk_shift);
throwInput = keyboard_check_pressed(vk_enter);

var move = rightInput - leftInput;
hSpeed = move * walkSpeed;
vSpeed += grav;

if(runInput)
{
	hSpeed *= runSpeed;
}

//check for throwing object
if(throwInput)
{
	throwing = true;
}else{throwing = false;}


//get which way sprite is facing
if(leftInput) {facing = "left";}
if(rightInput) {facing = "right";}
if (jumpInput) { facing = "jump";}

//jump check
if(place_meeting( x, y + 1, oCollision) && (jumpInput))
{
	jumping = true;
	vSpeed = -7;
}

//collision checks
Collision();


//which sprite to use 
switch(facing)
{
	case "right":
		sprite_index = sPlayerRight;
	break;
	case "left":
		sprite_index = sPlayerLeft;
	break;
	case "jump":
		sprite_index = sPlayerStand;
		throwing = false;
	break;
}

//throwing an object

if(throwing)
{
	instance_create_layer(x, y, "knifeLayer", oKnife);
}



//playerDied
if(playerHealth <= 0)
{
	game_restart();
}



