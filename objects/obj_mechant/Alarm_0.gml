/// @description Choix direction

if distance_to_object(obj_perso) > 100
{
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
	var _teta = point_direction(x,y,obj_perso.x,obj_perso.y);
	
	dep_x = dcos(_teta);
	dep_y = -dsin(_teta);
	
	
	/*
	if _teta <= 135 and _teta > 45
	{
		dep_x = 0;
		dep_y = -1;		
	}	
	
	if _teta <= 225 and _teta > 135
	{
		dep_x = -1;
		dep_y = 0;		
	}		
	
	if _teta <= 225 and _teta > 135
	{
		dep_x = -1;
		dep_y = 0;		
	}		
	
		if _teta <= 315 and _teta > 225
	{
		dep_x = 0;
		dep_y = 1;		
	}	
	
		if _teta > 315 or _teta <= 45
	{
		dep_x = 1;
		dep_y = 0;		
	}	
	*/
	
}



alarm[0] = irandom_range(60,120);