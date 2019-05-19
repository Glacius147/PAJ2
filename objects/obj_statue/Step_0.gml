/// @description Insert description here
// You can write your code in this editor


if active and distance_to_object(objp_perso)<30
{
	if global.perso != type{
		if keyboard_check_released(vk_space) or gamepad_button_check_released(0,gp_face1){
			global.perso = type;
			scr_transition(TRANS_MODE.GOTO,room_entree_1)
		}
	}
}