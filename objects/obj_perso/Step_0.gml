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
		frames_action = delai_action
		
		
	}
	
	
	#endregion

}


if pv <= 0 instance_destroy();
