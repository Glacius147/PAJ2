/// @description Insert description here
// You can write your code in this editor

if menu_on{
	w = display_get_gui_width();
	h = display_get_gui_height();
	draw_set_color(c_black);

	draw_rectangle(0,0,w,h,false);
	draw_set_color(c_white);
	_y = h/2-200
	_x = w/2-100
	for (var i=0;i<nb_option;i++)
	{
		draw_text(_x,_y,text_option[i])
		if i==current_option{
			draw_text(_x-30,_y,"X")
		}
		_y+=100
	}

}