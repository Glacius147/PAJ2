/// @description Deplacement

// Hors transition on autorise les mouvements
if obj_transition.mode == TRANS_MODE.OFF
{
	#region deplacements
	//On gere les inputs
	var input_x = 0; 
	var input_y = 0;

	if keyboard_check(vk_up) input_y = -1;
	if keyboard_check(vk_down) input_y = 1;
	if keyboard_check(vk_left) input_x = -1;
	if keyboard_check(vk_right) input_x = 1;
	if keyboard_check(vk_escape) obj_transition.mode =TRANS_MODE.PAUSE;


	if gamepad_actif and input_x = 0 and input_y = 0
	{
		input_x += gamepad_axis_value(0,gp_axislh);
		input_y += gamepad_axis_value(0,gp_axislv);	
		if gamepad_button_check_released(0,gp_start) obj_transition.mode =TRANS_MODE.PAUSE;
	
		if abs(input_x) < 0.2 input_x = 0;
		if abs(input_y) < 0.2 input_y = 0;
	
	}
	
	//On applique la vitesse
	_x = input_x * vitesse_base;
	_y = input_y * vitesse_base;
	
	//On applique l'animation
	scr_animation();
	
	
	//On applique les déplacements
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

	#endregion
	
	#region action
	
	
	
	if frames_action <= 0
	{
		if keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face1)
		{
			frames_action = delai_action;
			with instance_create_layer(x,y,"Instances",obj_attaque_epee)
			{
				image_angle = other.dir_mouvement;
				var _list = ds_list_create();
				var _num = instance_place_list(x, y, obj_mechant, _list, false);
				if _num > 0
			    {
			    for (var i = 0; i < _num; ++i;)
			        {
				        with _list[|i] scr_degats(other.degats);
					
				    }
			    }
			ds_list_destroy(_list);
			}
		}
	}
	else
	{
		frames_action --;
	}
	
	
	#endregion

}


if pv <= 0 instance_destroy();
