/// @description launch attack
// You can write your code in this editor

with instance_create_layer(x,y,"Instances_ombre",obj_fireball)
{
	vitesse = other.fireball_speed	
}
audio_play_sound(snd_attaque_neige,10,false)
to_launch --
if to_launch>0 alarm[3] = interval_fireball else alarm[2]=110-10*phase_boss;