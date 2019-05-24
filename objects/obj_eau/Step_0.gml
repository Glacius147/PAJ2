/// @description ?
//On applique le gel/degel

mask_index = spr_eau_V2;	
if distance_to_object(obj_perso_neige) < 30 gelee = true;
if distance_to_object(obj_perso_feu) < 30 gelee = false;
if place_meeting(x,y,obj_spray_feu) gelee = false;

if gelee
{
	if image_index <= 8 image_index = 9;
	
	if image_index < 13 
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
		image_index = 13;
	}
	
	mask_index = spr_empty;
}
else
{
	if image_index >= 9 
	{
		image_speed = -1;
	}
	else
	{
		if floor(image_index) = 8 image_index = 0;
		image_speed = 1;
	}
	mask_index = spr_eau_V2;		
}