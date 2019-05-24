/// @description ?

if abs(x-obj_gestion_the_end.x) < 4 and abs(y-obj_gestion_the_end.y + 30) < 4 and speed != 0
{
	speed = 0;
	with obj_gestion_the_end
	{
		scr_cutscene(spr_wizard,"Voila qui est mieux !","Je vais être gentil avec toi et te montrer comment elle marche !",2);
	}
}