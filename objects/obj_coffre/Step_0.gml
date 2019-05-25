/// @description Ouverture


var _d = distance_to_object(objp_perso);

if image_index = 0 and _d < 40
{
	if keyboard_check_released(ord("B")) or gamepad_button_check_released(0,gp_face1)
	{
			image_index = num;
			piece = 0;
	}
}

if image_index = num
{
	if piece < 150 
	{
		var _x = irandom_range(x-32,x+32);
		var _y = irandom_range(y-16,y+16);

		instance_create_layer(_x,_y,"Instances",obj_piece);
		
		piece ++;
	}
}