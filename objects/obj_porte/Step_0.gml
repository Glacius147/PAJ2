/// @description Vérification si besion être ouvert ou fermé

/// Gestion lumière
polygon = polygon_from_instance(id);


//Gestion ouverture/fermeture
ouvert = false;
bloquee = false;

//On vérifie l'état des interupteurs
with objp_interupt
{
	if objet_cible = other.num_objet
	{
		if active
		{
			other.ouvert = true;
		}
		else
		{
			other.bloquee = true;
		}
	}
}

//On applique l'ouverture/fermeture
if ouvert and !bloquee
{
	if image_index ==0 audio_play_sound_at(snd_porte_ouverture, x, y, 0, 100, 10000, .5, false, 10);
	if image_index != 5 
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
	}
	
	mask_index = spr_empty;
}
else
{
	
	mask_index = mask_base;	
	if !place_meeting(x,y,objp_mobil)
	{
		if image_index ==5 audio_play_sound_at(snd_porte_fermeture, x, y, 0, 100, 10000, .5, false, 10);
		if image_index != 0 
		{
			image_speed = -1;
		}
		else
		{
			image_speed = 0;
		}
	}
	else
	{
		if image_index > 2
		{
			image_speed = -1;
		}
		else
		{
		image_speed = 0;	
		}
		mask_index = spr_empty;
	}
}
	
	
