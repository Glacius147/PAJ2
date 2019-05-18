/// @description Choix direction

if vitesse != vitesse_base
{
	var _dir = floor(scr_wrap(point_direction(0,0,dep_x,dep_y) + 45,0, 360)/90);
	vitesse = vitesse_base;	
	
	switch _dir
	{
		case 0:
		{
			dep_x = 1;
			dep_y = 0;
			break;
		}
		case 1:
		{
			dep_x = 0;
			dep_y = -1;
			break;
		}
		case 2:
		{
			dep_x = -1;
			dep_y = 0;
			break;
		}
		case 3:
		{
			dep_x = 0;
			dep_y = 1;
			break;
		}
		case other:
		{
			dep_x = 0;
			dep_y = 1;
			break;
		}	
	}

}
else
if sens_rotation = "alea" or (dep_x == 0 and dep_y ==0)
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
	if sens_rotation = "droite"
	{
		var _xx = dep_x;
		var _yy = dep_y;
		dep_x = -_yy;
		dep_y = _xx;
	}
	else
	{
		var _xx = dep_x;
		var _yy = dep_y;
		dep_x = _yy;
		dep_y = -_xx;
	}
	
	scr_rotation_torche(point_direction(0,0,_xx,_yy),point_direction(0,0,dep_x,dep_y))
}





	


