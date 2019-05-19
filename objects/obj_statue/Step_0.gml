/// @description Insert description here
// You can write your code in this editor


d=distance_to_object(objp_perso)

if active and d<30
{
	if global.perso != type{
		if keyboard_check_released(vk_space) or gamepad_button_check_released(0,gp_face1){
			global.perso = type;
			with objp_perso {
			event_user(4)
			}
		}
	}
}