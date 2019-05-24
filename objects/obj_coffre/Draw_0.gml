/// @description ?

draw_self();

if image_index = 1
{
	part_emitter_region(global.ps_pieces,global.em_pieces,x-32,x+32,y-16,y+16,1,1);
	if piece < 120 
	{
		piece ++;
		part_emitter_burst(global.ps_pieces,global.em_pieces,global.part_pieces,1);
	}
}

draw_text(x,y,string(piece));