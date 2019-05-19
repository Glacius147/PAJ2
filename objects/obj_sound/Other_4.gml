/// @description Insert description here
// You can write your code in this editor



if obj_room_music.type != current_bg_music
{
	
	switch obj_room_music.type{
		case 0:
		{
			background_music = audio_play_sound(snd_titre,1,true)
			current_bg_music = 0
			break;
		}
		case 1:
		{
			audio_stop_sound(background_music)
			background_music = audio_play_sound(snd_theme1,1,true)
			current_bg_music = 1
			break;
		}
		case 2:
		{
			audio_stop_sound(background_music)
			background_music = audio_play_sound(snd_theme_dark,1,true)
			current_bg_music = 2
			break;
		}
	}
}
