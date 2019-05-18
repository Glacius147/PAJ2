/// @desc ajuste le volume
/// @arg type
/// @arg direction


var _type = argument[0];
var _delta = argument[1];

if _delta !=0
{
	if _type == 0 // Volume musique
	{
		obj_sound.percent_music = clamp(obj_sound.percent_music+_delta*10,0,100)
	
	   audio_group_set_gain(music, obj_sound.percent_music/100, 0);
	}
	else if _type == 1
	{
		obj_sound.percent_sfx = clamp(obj_sound.percent_sfx+_delta*10,0,100)
	
	   audio_group_set_gain(sfx, obj_sound.percent_sfx/100, 0);
	   audio_play_sound(snd_coup_epee,1,false)
	}
}