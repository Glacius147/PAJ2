/// @description Choix direction

if instance_exists(objp_perso)
{
if distance_to_object(objp_perso) > 70
{
	//Déplacment latéral si le joueur est loin
	
	si = irandom(1)*2-1
	
	var _teta = point_direction(x,y,objp_perso.x,objp_perso.y);
	
	dep_x = si*dsin(_teta);
	dep_y = si*dcos(_teta);
	
	/*
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
	*/
}
else if panique < 50
{
	//Déplacment défensif si le joueur est proche
	var _teta = point_direction(x,y,objp_perso.x,objp_perso.y);
	show_debug_message(panique)
	
	dep_x = -dcos(_teta);
	dep_y = dsin(_teta);	
} else //Déplacement offensif si panique
{
	var _teta = point_direction(x,y,objp_perso.x,objp_perso.y);
	
	dep_x = dcos(_teta);
	dep_y = -dsin(_teta);	
	
}
}
//Remise à la vitesse de base
vitesse = vitesse_base;

//Durée de déplacement dans cette direction
alarm[1] = irandom_range(30,50);