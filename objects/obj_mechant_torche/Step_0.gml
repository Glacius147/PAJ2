/// @description Perso spoted !

if (distance_to_object(objp_perso) < distance_vue and abs(scr_wrap(point_direction(x,y,objp_perso.x,objp_perso.y) - torche.light[|eLight.Direction],-180,180)) < 16) or distance_to_object(objp_perso) < 1
{
	dist = distance_to_object(objp_perso);
	var ligne_de_vue = true
	for (var i = 1; i < dist; i++)
	{
		//test de la ligne de vue (le joueur et les monstres ne bloquent pas les lignes de vue)
		var _list = ds_list_create();
		var _num = instance_position_list(x*i/dist + objp_perso.x*(1-i/dist), y*i/dist + objp_perso.y*(1-i/dist), obj_shadow_caster, _list, false);
		if _num > 0
		{
			for (var j = 0; j < _num; ++j;)
			{
				if _list[|j].object_index != obj_obstacle_visu ligne_de_vue = false;
			}
		}
		ds_list_destroy(_list);
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