/// @description Wrap(value, min, max)
/// @function Wrap
/// @param Direction depart
/// @param Direction arrivée

var _min = min(argument0,argument1);
var _max  = max(argument0,argument1);

if _min = 0 and _max = 270
{
	_min = 270;
	_max = 360;
}


if (distance_to_object(objp_perso) < distance_vue 
	and (point_direction(x,y,objp_perso.x,objp_perso.y) > _min) 
	and  (point_direction(x,y,objp_perso.x,objp_perso.y) < _max))
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