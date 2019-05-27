//Glissement si glace
event_inherited();


// Hors transition on autorise les mouvements
if obj_transition.mode == TRANS_MODE.OFF and !boss_end
{
	#region deplacements
	//On gere les inputs si glisse pas
	audio_listener_position(x, y, 0);
	if !glisse or coli_obstacle
	{
		var input_x = 0; 
		var input_y = 0;

		if keyboard_check(vk_up) input_y = -1;
		if keyboard_check(vk_down) input_y = 1;
		if keyboard_check(vk_left) input_x = -1;
		if keyboard_check(vk_right) input_x = 1;
		//REMOVE
		//if keyboard_check(vk_backspace) pv = 0;
		//if keyboard_check_released(vk_numpad5) scr_transition(TRANS_MODE.GOTO,room_entree_5);
		//END REMOVE
		
		if (gamepad_button_check_pressed(0,gp_face4) or keyboard_check_pressed(vk_control)) and frames_action <= 0 and roulade <= 0
		{
			event_user(3)
		}
		
		if obj_transition.percent_menu ==0{
			if keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start) 
			{
				audio_pause_all();
				audio_resume_sound(obj_sound.background_music)
				obj_transition.mode =TRANS_MODE.PAUSE;
			}
		}
		else obj_transition.percent_menu =0;


		if input_x = 0 and input_y = 0
		{
			input_x = gamepad_axis_value(0,gp_axislh);
			input_y = gamepad_axis_value(0,gp_axislv);	
	
			if abs(input_x) < 0.2 
			{
				input_x = 0
			}
			else
			{
				game_pad_actif = true;
			}
			if abs(input_y) < 0.2 input_y = 0 else game_pad_actif = true;
	
		} 
		else
		{
			game_pad_actif = false	
		}
	
		//On applique la vitesse (sauf contre un mur sur de la glace)
		if (input_x != 0 or input_y != 0 or !glisse) and !anim_stop
		{
			_x += input_x * vitesse_base;
			_y += input_y * vitesse_base;
	
			_x_d = input_x * vitesse_base;
			_y_d = input_y * vitesse_base;
		}
		
		if anim_stop
		{
			_x_d = input_x * vitesse_base;
			_y_d = input_y * vitesse_base;			
		}
		
	}
	else
	{
	_x += _x_d;
	_y += _y_d;		
		
	}
	
	//Si roulade
	if roulade > 0
	{
		_x = _dir_x * dist_roulade*power(0.8,duree_roulade-roulade+1)/4;
		_y = _dir_y  * dist_roulade*power(0.8,duree_roulade-roulade+1)/4;

		roulade --
		
		image_speed = 0;
		image_index = floor(image_number*point_distance(x,y,_x_start_roulade,_y_start_roulade)/dist_roulade);
		
	}


	
	
	//On applique les déplacements
	coli_obstacle = false;
	
	if !anim_stop or roulade > 0
	{
		while abs(_x) >= 1
		{
			scr_deplacement(_x/abs(_x),0);	
			_x = _x - _x/abs(_x);
		}

		while abs(_y) >= 1
		{
			scr_deplacement(0,_y/abs(_y));	
			_y = _y - _y/abs(_y);
		}
	}
	
	#endregion
	
	#region action
	
	//On vérifie les input et la dispo de l'action
	if frames_action <= 0 and roulade <= 0
	{
		if keyboard_check(ord("B")) or gamepad_button_check(0,gp_face1) 
		{

			//Durée avant la prochaine acrtion possible
			frames_action = delai_action;
			//Action
			event_user(0);
		}
	}
	else
	{
		frames_action --;
	}
	
	//On applique l'animation
	scr_animation();
	
	#endregion
	
	
	#region action 2 (roulade)
	
	//On vérifie les input et la dispo de l'action
	if frames_roulade <= 0
	{
		if keyboard_check_pressed(ord("N")) or gamepad_button_check_pressed(0,gp_face2) or  gamepad_button_check_pressed(0,gp_face3)
		{

			//Durée avant la prochaine acrtion possible
			frames_roulade = delai_roulade;
			//Action
			event_user(1);
		}
	}
	else
	{
		frames_roulade --;
	}
	
	//On applique l'animation
	scr_animation();
	
	#endregion

}

if obj_transition.mode == TRANS_MODE.OFF
{
	if pv <= 0 event_user(10)
}

if the_end sprite_index  = spr_perso_vert;