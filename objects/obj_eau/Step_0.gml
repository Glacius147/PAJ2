/// @description ?
//On applique le gel/degel

mask_index = spr_eau;	
if distance_to_object(obj_perso_neige) < 30 gelee = true;
if distance_to_object(obj_perso_feu) < 30 gelee = false;
if place_meeting(x,y,obj_spray_feu) gelee = false;

if gelee
{
	if image_index != 5 
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
	}
	
	mask_index = spr_empty;
}
else
{
	if image_index > 1 
	{
		image_speed = -1;
	}
	else
	{
		image_index = 0;
		image_speed = 0;
	}
	mask_index = spr_eau;		
}