/// @description Roulade

roulade = duree_roulade;

//Direction de la roulade

var _d = sqrt((_x_d*_x_d+_y_d*_y_d));

if _d != 0
{
	_dir_x = _x_d/_d;
	_dir_y = _y_d/_d;
}
else
{
	
	
}
