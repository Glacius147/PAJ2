/// @description ?
event_inherited();

polygon = polygon_from_instance(id);

with instance_create_layer(x,y,"Instances_ombre",obj_mur_trou_rat_obst)
{
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;	
	image_angle = other.image_angle;
}