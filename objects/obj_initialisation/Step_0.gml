/// @description Insert description here
// You can write your code in this editor

if menu_on{
#region input dans le menu

	//On gere les inputs
var input_x = 0; 
var input_y = 0;
var input_valid = false;

if _cooldownmenu == 0 {
	if keyboard_check(vk_up) input_y = -1;
	if keyboard_check(vk_down) input_y = 1;
	if keyboard_check(vk_left) input_x = -1;
	if keyboard_check(vk_right) input_x = 1;
}
if keyboard_check_pressed(vk_enter) input_valid = true; 

if input_x = 0 and input_y = 0
{
	if _cooldownmenu == 0 {
		input_x += gamepad_axis_value(0,gp_axislh);
		input_y += gamepad_axis_value(0,gp_axislv);
	}
	if gamepad_button_check_pressed(0,gp_face1) input_valid = true;
	
	if abs(input_x) < 0.2 input_x = 0; else input_x=sign(input_x);
	if abs(input_y) < 0.2 input_y = 0; else input_y=sign(input_y);
	
}
if input_y*2+input_x !=0
{
	_cooldownmenu = 10	
} else
{
	_cooldownmenu = max(_cooldownmenu-1,0)	
}
current_option = clamp(current_option+input_y,0,nb_option-1);
			
switch current_option
{
	case OPTION_MENU.DEMO:
	{
		if input_valid 
		{ 
			demo=true
			menu_on = false
			global.spot = -1;	
			scr_transition(TRANS_MODE.GOTO,room_desti);
		};
		break;
	}
	case OPTION_MENU.HISTOIRE:
	{
		if input_valid{
			menu_on = false
			global.spot = -1;	
			scr_transition(TRANS_MODE.GOTO,room_desti);
		}
		break;
	}
	case OPTION_MENU.HISTOIRE_NEW:
	{
		if input_valid
		{
			#region unlock le perso pour les futures runs
			ini_open("savedata.ini");
			ini_write_real("save", "Forme0", false);
			ini_write_real("save", "Forme1", false);
			ini_write_real("save", "Forme2", false);
			ini_write_real("save", "Forme3", false);
			ini_close()
			#endregion
			menu_on = false
			global.spot = -1;	
			scr_transition(TRANS_MODE.GOTO,room_desti);
		}
		break;
	}
	case OPTION_MENU.QUIT:
	{
		if input_valid
		{
			game_end();
		}
		break;
	}		
}
#endregion
}