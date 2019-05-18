
//Si le déplacement est possible
if obj_transition.mode == TRANS_MODE.OFF and frames_invul <= 0
{
	//On applique la vitesse de déplacement
	_x += dep_x*vitesse;
	_y += dep_y*vitesse;

	//On se déplace
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


//Le monstre meurt (A étoffer)
if pv <= 0 instance_destroy();
