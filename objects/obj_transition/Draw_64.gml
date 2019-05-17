/// @description Cadres noirs & fenetre menu.

if (mode != TRANS_MODE.OFF) and mode != TRANS_MODE.PAUSE
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h/2,false);
	draw_rectangle(0,h-percent*h/2,w,h,false);
}

if mode == TRANS_MODE.PAUSE
{
	x1 = floor(768/2*(1-percent_menu)+50*percent_menu)
	y1 = floor(720/2*(1-percent_menu)+50*percent_menu)
	x2 = ceil(768/2*(1-percent_menu)+718*percent_menu)
	y2 = ceil(720/2*(1-percent_menu)+670*percent_menu)
	
	scr_menubox(spr_9box,x1,y1,x2,y2)
	if percent_menu == 1{
		
		draw_set_color(c_black);
		//draw_set_halign(message_halign);
		//draw_set_valign(message_valign);
		//draw_set_font(message_font);
		//draw_text(message_x,message_y,error_message)	
	}	
}

