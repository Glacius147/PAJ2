/// @description ?


if glisse
{
	while abs(_x) >= 1
	{
		scr_deplacement(_x/abs(_x),0);	
		_x = _x - _x/abs(_x);
	}

	while abs(_y) >= 1
	{
		scr_deplacement(0,_y/abs(_y));	
		_y = _y - _y/abs(_y);
	}
	
}