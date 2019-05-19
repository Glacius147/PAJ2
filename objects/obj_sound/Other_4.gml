/// @description Insert description here
// You can write your code in this editor



if room=room_ini{
	background_music = audio_play_sound(snd_titre,1,true)
	current_bg_music = 0
}
else
{
	if obj_room_music.type != current_bg_music
	{
		audio_stop_sound(background_music)	
	}
	switch obj_room_music.type{
	case 1:
	{
	background_music = audio_play_sound(snd_theme1,1,true)
	current_bg_music = 1
	}
	case 2:
	{
	background_music = audio_play_sound(snd_theme_dark,1,true)
	current_bg_music = 2
	}
	}
}
