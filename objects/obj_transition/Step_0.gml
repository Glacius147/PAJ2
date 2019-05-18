/// @description Progression dans les transitions

if mode != TRANS_MODE.OFF
{
	if mode == TRANS_MODE.CUTSCENE
	{
		var nb_words = string_count(" ",cutscene_text[cutscene_counter])
		if keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1)
		{
			if _cutscene_nb_words >= nb_words+1
			{
				cutscene_counter ++	
				_cutscene_nb_words = 0
			} else
			{
				_cutscene_nb_words = nb_words
			}
			if cutscene_counter == array_length_1d(cutscene_text)
			{
				mode = TRANS_MODE.OFF
			}
		} else
		{
			_cutscene_nb_words = min(nb_words+1,_cutscene_nb_words+.06)
		}
		
	}
	else if mode = TRANS_MODE.DEATH
	{
		percent_menu = min(percent_menu+0.2,1)
		if keyboard_check_pressed(vk_enter) 
				{
					room_restart()
					obj_transition.mode =TRANS_MODE.OFF;
					percent_menu = 0.5
				}
		if gamepad_button_check_pressed(0,gp_start) {
					room_restart()
					obj_transition.mode = TRANS_MODE.OFF;
					percent_menu = 0.5
				}
	}
	else if mode = TRANS_MODE.INTRO
	{
		percent = max(0,percent*0.95-0.01);		
	}
	else if mode = TRANS_MODE.PAUSE
	{
		percent_menu = min(percent_menu+0.1,1)
		
	
		#region
		if percent_menu == 1
		{	
				//On gere les inputs
			var input_x = 0; 
			var input_y = 0;
			var input_valid = false;

			if _cooldownmenu == 0 {
				if keyboard_check(vk_up) input_y = -1;
				if keyboard_check(vk_down) input_y = 1;
				if keyboard_check(vk_left) input_x = -1;
				if keyboard_check(vk_right) input_x = 1;
				if keyboard_check_pressed(vk_escape) 
				{
					obj_transition.mode =TRANS_MODE.OFF;
					percent_menu = 0.5
				}
			
			}
			if keyboard_check_pressed(vk_enter) input_valid = true; 

			if input_x = 0 and input_y = 0
			{
				if _cooldownmenu == 0 {
					input_x += gamepad_axis_value(0,gp_axislh);
					input_y += gamepad_axis_value(0,gp_axislv);
				}
				if gamepad_button_check_pressed(0,gp_start) {
					obj_transition.mode = TRANS_MODE.OFF;
					percent_menu = 0.5
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
			num_menu = clamp(num_menu+input_y,0,nb_item_menu-1);
			
			switch num_menu
			{
				case MENU_ITEM.RETURN:
				{
					if input_valid {obj_transition.mode = TRANS_MODE.OFF;percent_menu = 0.5};
					break;
				}
				case MENU_ITEM.RESTART:
				{
					if input_valid{
						room_restart();
						obj_transition.mode =TRANS_MODE.OFF;
						percent_menu = 0.5
					}
					break;
				}
				case MENU_ITEM.QUIT:
				{
					if input_valid game_end();
					break;
				}
				case MENU_ITEM.MUSIC:
				{
					
					scr_volume_adjust(0,input_x);
					break;
				}
				case MENU_ITEM.SFX:
				{
					
					scr_volume_adjust(1,input_x);
					break;
				}
				
			}
			 
			
		}
		#endregion
	}
	else
	{
		percent = min(1,percent+(1-percent)*0.05+0.01);		
	}
	
	
	
	if (percent = 0) or (percent = 1)
	{
		switch mode
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}					
			case TRANS_MODE.RESTART:
			{
				game_restart();				
				break;
			}			
		}
	}
}