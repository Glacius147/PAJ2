/// @description Flammes

if image_index = 1
{
	part_emitter_region(global.ps_flammes,global.em_flammes,x-10,x+10,y-10,y+10,1,1);
	var _i = irandom_range(0,1);
	part_emitter_burst(global.ps_flammes,global.em_flammes,global.part_flammes,_i);
}

draw_self();