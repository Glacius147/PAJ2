/// @description ?
instance_create_layer(objp_perso.x,objp_perso.y,"Instances_mobil",obj_amulet_boss);

global.perso = 0;
with objp_perso event_user(4);
with objp_perso
{
	pv = 12;
	pv_max = 12;
	transformation = false;
}