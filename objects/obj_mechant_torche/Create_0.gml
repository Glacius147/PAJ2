/// @description ?

angle_base = image_angle;

image_angle = 0;

// Inherit the parent event
event_inherited();

with instance_create_layer(x,y,"Instances",obj_mechant_torche_light)
{
	id_source = other.id;	
	other.torche = id;
}