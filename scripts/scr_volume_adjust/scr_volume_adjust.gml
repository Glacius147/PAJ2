/// @desc ajuste le volume
/// @arg type
/// @arg direction


var _type = argument[0];
var _delta = argument[1];

if _type == 0 // Volume musique
{
	obj_sound.percent_music = clamp(obj_sound.percent_music+_delta*10,0,100)
}
else if _type == 1
{
	obj_sound.percent_sfx = clamp(obj_sound.percent_sfx+_delta*10,0,100)
}