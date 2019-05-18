/// @desc affiche une zone de menu
/// @arg d_x
/// @arg d_y


//On teste si il y a un obstacle en dur
if !place_meeting(x + argument0, y + argument1,objp_obstacle) and !place_meeting(x + argument0, y + argument1,objp_obstacle_shadow)
{
	//On empeche les monstres de bouger le perso et vis versa
	if  object_is_ancestor(object_index, objp_mobil) or !place_meeting(x + argument0, y + argument1,objp_mobil)
	{
		//On tente de deplacer les objets deplacables
		with instance_place(x + argument0, y + argument1, objp_poussable) scr_deplacement(argument0,argument1)
		with instance_place(x + argument0, y + argument1, objp_poussable_shadow) scr_deplacement(argument0,argument1)
	
		//Si la place est libre on bouge.
		if !place_meeting(x + argument0, y + argument1,objp_poussable) and !place_meeting(x + argument0, y + argument1,objp_poussable_shadow)
		{
			x += argument0;
			y += argument1;
		}
		else
		{
			coli_obstacle = true;
		}
	}
}
else
{
	coli_obstacle = true;
}