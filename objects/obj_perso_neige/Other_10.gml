/// @description Action

//Lancement de boule de neige
with instance_create_layer(x,y,"Instances_mobil",obj_boule_neige)
{
	direction = other.dir_mouvement;
	speed = vitesse;
}