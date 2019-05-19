
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

if ouvert and !bloquee and first_time
{
	alarm[0] = 38;
	first_time = false;	
}