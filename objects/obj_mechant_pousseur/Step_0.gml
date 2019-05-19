/// @description Perso spoted !


event_inherited();


/// @description ?
if coli_obstacle = true
{
	coli_obstacle = false;
	if vitesse = vitesse_base and !retour alarm[0] = 1;
}

// fait en sorte que la direction de regard ne change pas en pause.
if ((obj_transition.mode == TRANS_MODE.PAUSE or obj_transition.mode==TRANS_MODE.CUTSCENE) and alarm[0]>0) 
{
	alarm[0]++
}