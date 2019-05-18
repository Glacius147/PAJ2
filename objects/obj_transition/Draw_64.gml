/// @description Cadres noirs & fenetre menu.

if (mode != TRANS_MODE.OFF) and mode != TRANS_MODE.PAUSE
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h/2,false);
	draw_rectangle(0,h-percent*h/2,w,h,false);
}

if mode == TRANS_MODE.PAUSE
{
	x1 = floor(w/2*(1-percent_menu)+(w/2 - 300)*percent_menu)
	y1 = floor(h/2*(1-percent_menu)+(h/2 - 300)*percent_menu)
	x2 = ceil(w/2*(1-percent_menu)+(w/2+300)*percent_menu)
	y2 = ceil(h/2*(1-percent_menu)+(h/2+300)*percent_menu)
	
	scr_menubox(spr_9box,x1,y1,x2,y2)
	if percent_menu == 1{
		
		draw_set_color(c_white);
		//draw_set_halign(message_halign);
		//draw_set_valign(message_valign);
		//draw_set_font(message_font);
		message_y = h/2-250
		draw_text(w/2-200,message_y,"Return to game ")
		message_y += 100
		draw_text(w/2-200,message_y,"Volume Musique ")
		draw_set_color(c_gray);
		draw_rectangle(w/2+50,message_y,w/2+250,message_y+20,false)
		draw_set_color(c_white);
		draw_rectangle(w/2+50,message_y,w/2+50+2*obj_sound.percent_music,message_y+20,false)
		message_y += 100
		draw_text(w/2-200,message_y,"Volume Effets ")
		draw_set_color(c_gray);
		draw_rectangle(w/2+50,message_y,w/2+250,message_y+20,false)
		draw_set_color(c_white);
		draw_rectangle(w/2+50,message_y,w/2+50+2*obj_sound.percent_sfx,message_y+20,false)
		message_y += 100
		draw_text(w/2-200,message_y,"Recommencer la piece")
		message_y += 100
		draw_text(w/2-200,message_y,"Quitter")	
		draw_text(w/2-225,h/2+100*(-2.5+num_menu),"X")	
	}	
}

