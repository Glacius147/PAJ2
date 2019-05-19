/// @description ?

if image_index = 0 and image_speed = 1 image_index = 1;

if !light_on
{
	image_index = 0;
	image_speed = 0;
	with obj_torche_light
	{	
		if id_source = other.id instance_destroy();
	}
	id_cible = noone
}
else
{
	if id_cible = noone
	{
		with instance_create_layer(x,y,"Instances",obj_torche_light)
		{
			id_source = other.id;
			other.id_cible = id;
		}
		image_speed = 1;
	}
}