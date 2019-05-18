/// @description Vérification si besion être ouvert ou fermé

/// Gestion lumière
polygon = polygon_from_instance(id);


//Gestion ouverture/fermeture
ouvert = false;
bloquee = false;

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

if ouvert and !bloquee
{
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
	if image_index != 0 
	{
		image_speed = -1;
	}
	else
	{
		image_speed = 0;
	}
	
	mask_index = mask_base;		
	
}
	
	
