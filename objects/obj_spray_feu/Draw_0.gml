/// @description ?
/// @description Flammes

part_type_direction(global.part_spray_feu,image_angle - 30,image_angle + 30,0,5);

part_system_layer(global.ps_spray_feu,"Instances");

part_emitter_region(global.ps_spray_feu,global.em_spray_feu,x-5,x+5,y-5,y+5,1,1);
part_emitter_burst(global.ps_spray_feu,global.em_spray_feu,global.part_spray_feu,10);

