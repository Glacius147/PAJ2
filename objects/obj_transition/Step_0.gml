/// @description Progression dans les transitions

if mode != TRANS_MODE.OFF
{
	if mode == TRANS_MODE.CUTSCENE
	{
		#region gestion défilement texte
		var nb_lettres = string_length(cutscene_text[cutscene_counter])
		if keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face1)
		{
			if _cutscene_nb_letters >= nb_lettres+1
			{
				cutscene_counter++
				_cutscene_nb_letters = 0
			} else
			{
				_cutscene_nb_letters = nb_lettres+1
			}
			if cutscene_counter == array_length_1d(cutscene_text)
			{
				mode = TRANS_MODE.OFF
				if obj_transition.event_post_cutscene !=-1
				{
				with origin_cutscene
				{
					event_user(obj_transition.event_post_cutscene)	
				}
				}
			}
		} else
		{
			_cutscene_nb_letters = min(nb_lettres+1,_cutscene_nb_letters+.3)
		}
		#endregion
	}
	else if mode = TRANS_MODE.DEATH
	{
		#region input pour reset
		//%age d'affichage de la fenetre de mort.
		percent_menu = min(percent_menu+0.2,1)
		if keyboard_check_pressed(vk_space) 
		{
			room_restart()
			obj_transition.mode =TRANS_MODE.OFF;
			percent_menu = 0.5
		}
		if gamepad_button_check_pressed(0,gp_face1) 
		{
				room_restart()
				obj_transition.mode = TRANS_MODE.OFF;
				percent_menu = 0.5
		}
		#endregion
	}
	else if mode = TRANS_MODE.INTRO
	{
		percent = max(0,percent*0.95-0.01);		
	}
	else if mode = TRANS_MODE.PAUSE
	{
		//pourcentage d'affichage du menu
		percent_menu = min(percent_menu+0.1,1)
		
		#region input dans le menu
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
					audio_resume_all()
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
					audio_resume_all()
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
	
	
	
	if (percent = 0 and mode = TRANS_MODE.INTRO) or (percent = 1)
	{
		#region changements de transitions 
		switch mode
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF
				if new_start 
				{
					new_start = false
					#region cutscene de départ pour les différentes formes
					switch global.perso
					{
						case TRANSFORMATION.Humain: 
						{
							scr_cutscene(spr_wizard,"Halte intrus ! Si tu rentres dans mon chateau tu le regretteras amèrement !",-1)
							break;
						}
						case TRANSFORMATION.Rat: 
						{
							scr_cutscene(spr_wizard,"Voilà une forme qui te convient mieux, vermine ! Maintenant, disparait de ma vue !",-1)
							break;
						}
						case TRANSFORMATION.Neige: 
						{
							scr_cutscene(spr_wizard,"Bien. Tu peux rester dans le jardin pour l'instant, tu fera peur aux oiseaux.",-1)
							break;
						}
						case TRANSFORMATION.Feu: 
						{
							scr_cutscene(spr_wizard,"Bien, il devrait pleuvoir bientôt, et je serais débarrassé de toi définitivement.",-1)
							break;
						}
					}
					#endregion
				}	
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
		#endregion
	}
}