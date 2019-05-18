/// @description Upon death
// You can write your code in this editor

/*

*/
if do_cutscene_death{
	scr_cutscene("HAHAHAHAHAHA, TA PATHETIQUE EXISTENCE S'ACHEVE ICI !","CREVE PETITE MERDE")
	do_cutscene_death = false
}
else
{
	obj_transition.mode = TRANS_MODE.DEATH
	instance_destroy()
}