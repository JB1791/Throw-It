/// @description 

//move menu in
menuX += (menuTargetX - menuX) / menuSpeed;

//keyboard controls
if(menuControl)
{
	if(keyboard_check_pressed(vk_up))
	{
		menuCursor++;
		if(menuCursor >= menuItems)
		{menuCursor = 0;}
	}
	if(keyboard_check_pressed(vk_down))
	{
		menuCursor--;
		if(menuCursor < 0)
		{menuCursor = menuItems - 1;}
	}
	if(keyboard_check_pressed(vk_enter))
	{
		menuTargetX = guiWidth + 200;
		menuCommitted = menuCursor;
		menuControl = false;
	}
}

if(menuCommitted != -1)
{
	switch(menuCommitted)
	{
		case 0:
			game_end();
		break;
		case 1:
			room_goto(helpScreen);
		break;
		case 2:
			room_goto(levelOne);
		break;
		default:
			//
		break;
	}
}
