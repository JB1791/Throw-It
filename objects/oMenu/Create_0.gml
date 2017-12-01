/// @description 

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

menuX = guiWidth + 200;
menuY = guiHeight - guiMargin;

menuTargetX = guiWidth - guiMargin;
menuSpeed = 25;
menuFont = fMenu;

menuItemHeight = font_get_size(fMenu);
menuCommitted = -1;

menuControl = true;

menu[2] = "New Game";
menu[1] = "How To Play";
menu[0] = "Quit";

menuItems = array_length_1d(menu);
menuCursor = 2;
