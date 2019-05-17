/// @description Progression dans les transitions

if mode != TRANS_MODE.OFF
{
	if mode = TRANS_MODE.INTRO
	{
		percent = max(0,percent*0.95-0.01);		
	}
	else if mode = TRANS_MODE.PAUSE
	{
		percent_menu = min(percent_menu+0.1,1)
		#region
		if percent_menu == 1
		{	
			if keyboard_check(vk_escape) obj_transition.mode =TRANS_MODE.OFF;
			
			if keyboard_check(vk_up) num_menu = max(num_menu-1,0);
			if keyboard_check(vk_down) num_menu = min(num_menu+1,nb_item_menus-1);
			
			switch num_menu
			{
				case MENU_ITEM.QUIT:
				{
					if keyboard_check(vk_enter) game_end();
					break;
				}
				case MENU_ITEM.MUSIC:
				{
					if keyboard_check(vk_left) scr_volume_adjust(0,-1);
					if keyboard_check(vk_right) scr_volume_adjust(0,+1);
					break;
				}
				case MENU_ITEM.SFX:
				{
					if keyboard_check(vk_left) scr_volume_adjust(1,-1);
					if keyboard_check(vk_right) scr_volume_adjust(1,+1);
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
} else
{
	// effacer le menu.
	percent_menu = 0	
}