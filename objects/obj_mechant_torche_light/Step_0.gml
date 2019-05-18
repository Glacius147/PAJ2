/// @description ?

if instance_exists(id_source)
{
	var _dir = point_direction(0,0,id_source.dep_x,id_source.dep_y);
	if id_source.dep_x != 0 or id_source.dep_y != 0
	{
		light[|eLight.Direction] = _dir;
	}
	
	light[|eLight.X] = id_source.x + 20*dcos(_dir);
	light[|eLight.Y] = id_source.y - 20*dsin(_dir);
}
else
{
	instance_destroy();	
}