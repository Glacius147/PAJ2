/// @description Flammes

if image_index != 0
{
	part_emitter_region(global.ps_flammes,global.em_flammes,x-30,x+30,y-30,y+30,1,1);
	var _i = irandom_range(3,5);
	part_emitter_burst(global.ps_flammes,global.em_flammes,global.part_flammes,_i);
}

draw_self();