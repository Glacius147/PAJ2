/// @description Perso spoted !


if (distance_to_object(objp_perso) < distance_vue and abs(scr_wrap(point_direction(x,y,objp_perso.x,objp_perso.y) - torche.light[|eLight.Direction],-180,180)) < 16) or distance_to_object(objp_perso) < 1
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
	
	immobil = false;
	
	dep_x = dcos(_teta);
	dep_y = -dsin(_teta);


	if vitesse != 0	vitesse = vitesse_course;
	alarm[0] = 30;
	}
}
else if retour
{
	var _teta = point_direction(x,y,x_start,y_start);
		
	dep_x = dcos(_teta);
	dep_y = -dsin(_teta);

	if abs(x - x_start) < 1 and abs(y - y_start) < 1
	{
		immobil = imm_start;
		retour = false;
		vitesse = -1;
		alarm[0] = 1;
	}	
}


// Inherit the parent event

event_inherited();


/// @description ?
if coli_obstacle = true
{
	coli_obstacle = false;
	if vitesse = vitesse_base and !retour alarm[0] = 1;
}

// fait en sorte que la direction de regard ne change pas en pause.
if ((obj_transition.mode == TRANS_MODE.PAUSE or obj_transition.mode==TRANS_MODE.CUTSCENE) and alarm[0]>0) 
{
	alarm[0]++
}