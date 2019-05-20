/// @description Insert description here
// You can write your code in this editor


with other
{
	if roulade = 0
	{
		scr_degats(1);
		audio_play_sound(snd_impact,10,false);
		instance_destroy(other);
	}		
}

