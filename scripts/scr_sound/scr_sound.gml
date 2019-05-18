/// @description sound(soundfile,Is_SFX,Loop)
/// @function cutscene
/// @param sound
/// @param sfx
/// @param loop
// lance un son

var _son = argument[0]
var _is_sfx = argument[1]
var _is_loop = argument[2]


if _is_sfx
{
	audio_play_sound(_son,1,false)
	
}
else{
	
}
