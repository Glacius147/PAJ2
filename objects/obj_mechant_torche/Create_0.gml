/// @description ?

angle_base = image_angle;

// Inherit the parent event
event_inherited();

with instance_create_layer(x,y,"Instances",obj_mechant_torche_light)
{
	other.id_torche = id;
	id_source = other.id;	
	other.torche = id;
}