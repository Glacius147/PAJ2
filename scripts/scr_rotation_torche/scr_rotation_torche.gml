/// @description Wrap(value, min, max)
/// @function Wrap
/// @param Direction depart
/// @param Direction arrivée


if (distance_to_object(objp_perso) < 400 
	and (point_direction(x,y,objp_perso.x,objp_perso.y) + 16 > min (argument0,argument1)) 
	and  (point_direction(x,y,objp_perso.x,objp_perso.y) - 16 < max (argument0,argument1)))
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
	}
}