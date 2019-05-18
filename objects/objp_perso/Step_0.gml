//Glissement si glace
event_inherited();

// Hors transition on autorise les mouvements
if obj_transition.mode == TRANS_MODE.OFF
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
		if keyboard_check(vk_backspace) pv = 0;
		if keyboard_check_released(vk_numpad1) scr_transition(TRANS_MODE.GOTO,room_entree_1);
		if keyboard_check_released(vk_numpad2) scr_transition(TRANS_MODE.GOTO,room_entree_2);
		if keyboard_check_released(vk_numpad3) scr_transition(TRANS_MODE.GOTO,room_entree_3);
		if keyboard_check_released(vk_numpad4) scr_transition(TRANS_MODE.GOTO,room_entree_4);
		if keyboard_check_released(vk_numpad5) scr_transition(TRANS_MODE.GOTO,room_entree_5);
		//END REMOVE
		if obj_transition.percent_menu ==0{
			if keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start) 
			{
				audio_pause_all();
				obj_transition.mode =TRANS_MODE.PAUSE;
			}
		}
		else obj_transition.percent_menu =0;


		if input_x = 0 and input_y = 0
		{
			input_x = gamepad_axis_value(0,gp_axislh);
			input_y = gamepad_axis_value(0,gp_axislv);	
	
			if abs(input_x) < 0.2 input_x = 0;
			if abs(input_y) < 0.2 input_y = 0;
	
		}
	
		//On applique la vitesse (sauf contre un mur sur de la glace)
		if (input_x != 0 or input_y != 0 or !glisse) and !anim_stop
		{
			_x += input_x * vitesse_base;
			_y += input_y * vitesse_base;
	
			_x_d = input_x * vitesse_base;
			_y_d = input_y * vitesse_base;
			}
	}
	else
	{
	_x += _x_d;
	_y += _y_d;		
		
	}

	//On applique les déplacements
	coli_obstacle = false;
	
	if !anim_stop
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
	if frames_action <= 0
	{
		if keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face1)
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

}

if obj_transition.mode == TRANS_MODE.OFF
{
	if pv <= 0 event_user(10)
}