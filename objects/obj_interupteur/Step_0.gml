/// @description Quelqu'un me marche dessus !

if place_meeting(x,y,objp_poussable) or place_meeting(x,y,objp_poussable_shadow) or place_meeting(x,y,objp_mobil)
{
	if active = inverse{
		audio_play_sound(snd_interrupteur,1,false)	
	}
	active = not(inverse);
}
else
{
	active = inverse;
}


event_inherited();