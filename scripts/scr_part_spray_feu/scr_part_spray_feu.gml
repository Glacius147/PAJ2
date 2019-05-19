global.ps_spray_feu = part_system_create();
global.part_spray_feu = part_type_create();
part_type_shape(global.part_spray_feu,pt_shape_flare);
part_type_size(global.part_spray_feu,0.05,0.15,0,0);
part_type_scale(global.part_spray_feu,1,1);
part_type_color3(global.part_spray_feu,65535,4227327,255);
part_type_alpha1(global.part_spray_feu,1);
part_type_speed(global.part_spray_feu,3,6,0,0);
part_type_direction(global.part_spray_feu,-30,30,0,5);
part_type_gravity(global.part_spray_feu,0,270);
part_type_orientation(global.part_spray_feu,0,0,0,0,1);
part_type_blend(global.part_spray_feu,1);
part_type_life(global.part_spray_feu,20,20);

global.em_spray_feu = part_emitter_create(global.ps_spray_feu);

