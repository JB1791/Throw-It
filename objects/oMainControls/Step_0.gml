/// @description 

if(keyboard_check_pressed(ord("R"))) {game_restart();}
if(keyboard_check_pressed(vk_escape)) {game_end();}

window_set_cursor(cr_none);
cursor_sprite = sCursor;

if(splashTime > 0 && splashTime <= 60)
{
	splashTime -= 1;
	if(splashTime <= 0)
	{
		room_goto(menuScreen);
		splashTime = 0;
	}
}