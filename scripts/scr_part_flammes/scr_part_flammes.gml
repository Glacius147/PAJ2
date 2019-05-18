/// @description Particules des flammes.
global.ps_flammes = part_system_create();
global.part_flammes = part_type_create();
part_type_shape(global.part_flammes,pt_shape_disk);
part_type_size(global.part_flammes,0.01,0.05,0,0);
part_type_scale(global.part_flammes,1,1);
part_type_color3(global.part_flammes,65535,255,64);
part_type_alpha1(global.part_flammes,0.9);
part_type_speed(global.part_flammes,1,1,0,0);
part_type_direction(global.part_flammes,80,100,0,20);
part_type_orientation(global.part_flammes,0,0,0,0,1);
part_type_blend(global.part_flammes,1);
part_type_life(global.part_flammes,40,40);
global.em_flammes = part_emitter_create(global.ps_flammes);

//part_system_depth(global.ps_flammes,250);