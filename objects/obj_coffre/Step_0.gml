/// @description Ouverture


var _d = distance_to_object(objp_perso);

if image_index = 0 and _d < 40
{
	if keyboard_check_released(vk_space) or gamepad_button_check_released(0,gp_face1)
	{
			image_index = 1;
			piece = 0;
	}
}