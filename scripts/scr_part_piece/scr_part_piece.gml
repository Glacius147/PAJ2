

global.ps_pieces = part_system_create();
global.part_pieces = part_type_create();
part_type_sprite(global.part_pieces,spr_piece,0,0,0);
part_type_size(global.part_pieces,1,1,0,0);
part_type_scale(global.part_pieces,1,1);
part_type_color1(global.part_pieces,65535);
part_type_alpha1(global.part_pieces,1);
part_type_speed(global.part_pieces,3,8,0,0);
part_type_direction(global.part_pieces,45,135,0,0);
part_type_gravity(global.part_pieces,0.10,270);
part_type_orientation(global.part_pieces,0,0,0,0,1);
part_type_blend(global.part_pieces,1);
part_type_life(global.part_pieces,60,60);
global.em_pieces = part_emitter_create(global.ps_pieces);

