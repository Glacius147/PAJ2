/// @description Insert description here
// You can write your code in this editor

var _d = distance_to_object(objp_perso)

if image_index = 0 and _d < 40
{
	var _w = display_get_gui_width();
	var _h = display_get_gui_height();
	dsprite = 0
	if objp_perso.game_pad_actif{
		dsprite = 4	
	}
	
		draw_set_color(c_white);
			draw_sprite(spr_controls,1+dsprite,_w/2-30,_h-400)
			draw_text(w/2+30,h-375," : Ouvrir !")
}