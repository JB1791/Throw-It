/// @description 

if(room = splashScreen or room = menuScreen) exit;

draw_self();

if(!instance_exists(oPlayer)) exit;

draw_set_color(c_red);
draw_rectangle(x + 4, y + 4, x + 123 * (drawHealth / oPlayer.maxHealth), 
					y + 11, false);
draw_set_color(c_white);
