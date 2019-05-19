/// @description Insert description here
// You can write your code in this editor

d=distance_to_object(objp_perso)

if active and d<30
{
	if global.perso != type
	{
		w = display_get_gui_width();
		h = display_get_gui_height();
		dsprite = 0
		if objp_perso.game_pad_actif{
			dsprite = 4	
		}
	
		draw_set_color(c_white);
			draw_sprite(spr_controls,1+dsprite,w/2-30,h-400)
			draw_text(w/2+30,h-375," : Transformation !")
	}
}