/// @description ?

event_inherited();


x_start = x;
y_start = y;
imm_start = immobil;

if object_index != obj_perso_feu and object_index != obj_mechant_torche 
{
	with instance_create_layer(x,y,"Instances",obj_obstacle_visu)
	{
		id_source = other.id;	
	}
}
