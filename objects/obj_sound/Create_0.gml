/// @description Insert description here
// You can write your code in this editor


audio_group_load(sfx);
audio_group_load(music);
percent_music= 70;
percent_sfx = 70;

current_bg_music = -1

audio_falloff_set_model(audio_falloff_exponent_distance);


audio_group_set_gain(sfx, obj_sound.percent_music/100, 0);
	   
audio_group_set_gain(music, obj_sound.percent_music/100, 0);
//background_music = audio_play_sound(snd_titre,1,true)