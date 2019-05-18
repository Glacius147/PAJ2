/// @description ?
//On applique le gel/degel

if distance_to_object(obj_perso_neige) < 30 gelee = true;


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
	if image_index != 0 
	{
		image_speed = -1;
	}
	else
	{
		image_speed = 0;
	}
	mask_index = spr_eau;		
}