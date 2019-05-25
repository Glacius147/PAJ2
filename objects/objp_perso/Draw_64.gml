/// @description Insert description here
// You can write your code in this editor


//Affichage de l'aide aux controles ds la room 1
if room = room_entree_1
{
	w = display_get_gui_width();
	h = display_get_gui_height();
	dsprite = 0
	if game_pad_actif{
		dsprite = 4	
	}
	
	draw_set_color(c_white);
	draw_sprite(spr_controls,0+dsprite,0,h-75)
	draw_text(57,h-50," : Déplacement")
	if global.perso != TRANSFORMATION.Rat{
		draw_sprite(spr_controls,1+dsprite,w-300,h-75)
		draw_text(w-243,h-50," : Attaque")
	}
	draw_sprite(spr_controls,2+dsprite,w-150,h-75)
	draw_text(w-93,h-50," : Roulade")
	draw_sprite(spr_controls,3+dsprite,0,60)
	draw_text(57,85," : Options/Restart")

	if obj_transition.amulet_count = 4
	{
		dsprite = 8
	
		if game_pad_actif{
			dsprite = 9	
		}
		draw_sprite(spr_controls,dsprite,0,110)
		draw_text(57,135," : Changer de forme")	
	}
	
}