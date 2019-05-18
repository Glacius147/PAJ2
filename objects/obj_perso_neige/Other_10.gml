/// @description Action

//Lancement de boule de neige

audio_play_sound(snd_attaque_neige,1,false)
with instance_create_layer(x,y,"Instances_mobil",obj_boule_neige)
{
	direction = other.dir_mouvement;
	speed = vitesse;
}