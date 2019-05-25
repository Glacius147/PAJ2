/// @description The END
// You can write your code in this editor
with instance_create_layer(x,y,"Instances",obj_cadavre)
{
	if other.boss_end image_index = 2
}

with objp_perso{	
	boss_end = other.boss_end
scr_cutscene(spr_wizard,"AAAAAAAAAAAAAAARGH",12)
}
// Inherit the parent event
event_inherited();

