//Placement du perso celon la porte qui l'a envoyé dans la salle.
with obj_spot_arrivee
{
	if spot_num == global.spot
	{
		other.x = x;
		other.y = y;	
	}
}