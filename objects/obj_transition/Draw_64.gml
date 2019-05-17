/// @description Cadres noirs & fenetre menu.

if (mode != TRANS_MODE.OFF) and mode != TRANS_MODE.PAUSE
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h/2,false);
	draw_rectangle(0,h-percent*h/2,w,h,false);
}

if mode == TRANS_MODE.PAUSE
{
	x1 = floor(w/2*(1-percent_menu)+50*percent_menu)
	y1 = floor(h/2*(1-percent_menu)+50*percent_menu)
	x2 = ceil(w/2*(1-percent_menu)+(w-50)*percent_menu)
	y2 = ceil(h/2*(1-percent_menu)+(h-50)*percent_menu)
	
	scr_menubox(spr_9box,x1,y1,x2,y2)
	if percent_menu == 1{
		
		draw_set_color(c_black);
		//draw_set_halign(message_halign);
		//draw_set_valign(message_valign);
		//draw_set_font(message_font);
		message_y = 100
		draw_text(100,message_y,"Volume Musique")
		message_y += 100
		draw_text(100,message_y,"Volume Effets")
		message_y += 100
		draw_text(100,message_y,"Quitter")	
		draw_text(75,100*(1+num_menu),"X")	
	}	
}

