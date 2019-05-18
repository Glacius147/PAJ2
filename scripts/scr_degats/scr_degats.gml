/// @desc Tente d'infliger des dégats
/// @arg montant des degats

if frames_invul = 0
{
	pv -= argument0;
	switch object_index
	{
		case obj_perso_humain:
		{
			audio_play_sound(snd_hurt,1,false)		
		}
	}
	frames_invul = duree_invul;	
}