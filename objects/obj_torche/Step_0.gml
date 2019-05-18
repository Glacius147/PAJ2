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
}