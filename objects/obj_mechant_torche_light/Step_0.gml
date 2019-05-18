/// @description ?

/// @description ?
light[|eLight.X] = id_source.x;
light[|eLight.Y] = id_source.y;

if id_source.dep_x != 0 or id_source.dep_y != 0
{
	light[|eLight.Direction] = point_direction(0,0,id_source.dep_x,id_source.dep_y);
}