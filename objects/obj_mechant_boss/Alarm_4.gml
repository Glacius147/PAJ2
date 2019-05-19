/// @description launch defensive attack
// You can write your code in this editor

if old_phase = PHASE.NORMAL1
{
	delta_theta = 45
	
} else
{
	delta_theta = 10
}

for (var i=0; i<360; i+=delta_theta)
{
with instance_create_layer(x,y,"Instances_ombre",obj_fireball)
{
	vitesse = other.fireball_speed	
	direction = i
}
audio_play_sound(snd_attaque_neige,10,false)
}

phase_boss = old_phase

alarm[2]=50;