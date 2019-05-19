/// @description Choix direction


if distance_to_object(objp_perso) > 100
{
	//Déplacment aléatoire si le joueur est loin
	
	var i = irandom_range(0,1);
	var j = irandom_range(0,1);
	
	if i == 1
	{
		dep_x = 2*j-1;
		dep_y = 0;
	}
	else
	{
		dep_y = 2*j-1;
		dep_x = 0;
	}	
}
else
{
	//Déplacment défensif si le joueur est proche
	
	var _teta = point_direction(x,y,objp_perso.x,objp_perso.y);
	show_debug_message(string(_teta))
	
	dep_x = -dcos(_teta);
	dep_y = dsin(_teta);	
}

//Remise à la vitesse de base
vitesse = vitesse_base;

//Durée de déplacement dans cette direction
alarm[1] = irandom_range(10,40);