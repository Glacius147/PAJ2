/// @desc affiche une zone de menu
/// @arg d_x
/// @arg d_y

if !place_meeting(x + argument0, y + argument1,objp_obstacle) and !place_meeting(x + argument0, y + argument1,objp_obstacle_shadow)
{
	if  object_is_ancestor(object_index, objp_mobil) or !place_meeting(x + argument0, y + argument1,objp_mobil)
	{
		with instance_place(x + argument0, y + argument1, objp_poussable) scr_deplacement(argument0,argument1)
		with instance_place(x + argument0, y + argument1, objp_poussable_shadow) scr_deplacement(argument0,argument1)
	
		if !place_meeting(x + argument0, y + argument1,objp_poussable) and !place_meeting(x + argument0, y + argument1,objp_poussable_shadow)
		{
			x += argument0;
			y += argument1;
		}
	}
}