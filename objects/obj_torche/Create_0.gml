/// @description Activation torche
if light_on
{
	with instance_create_layer(x,y,"Instances",obj_torche_light)
	{
		id_source = other.id;	
		other.id_cible = id;
	}
	image_speed = 1;
}
else
{
	id_cible = noone;
	image_speed = 0;
}
