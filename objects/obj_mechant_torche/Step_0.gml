/// @description Perso spoted !


if (distance_to_object(objp_perso) < distance_vue and abs(scr_wrap(point_direction(x,y,objp_perso.x,objp_perso.y) - torche.light[|eLight.Direction],-180,180)) < 16) or distance_to_object(objp_perso) < 80
{
	dist = distance_to_object(objp_perso);
	var ligne_de_vue = true
	for (var i = 1; i < dist; i++)
	{
		if position_meeting(objp_perso.x*i/dist + x*(1-i/dist),objp_perso.y*i/dist + y*(1-i/dist),obj_shadow_caster)
		{
			ligne_de_vue = false				
		}
	}
		
	if ligne_de_vue 
	
	{	
	var _teta = point_direction(x,y,objp_perso.x,objp_perso.y);
	
	dep_x = dcos(_teta);
	dep_y = -dsin(_teta);

	vitesse = vitesse_course;
	alarm[0] = 30;
	}
}

// Inherit the parent event
event_inherited();


/// @description ?
if coli_obstacle = true
{
	coli_obstacle = false;
	if vitesse = vitesse_base alarm[0] = 1;
}
