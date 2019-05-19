/// @description Transformation parmi les dispo
// You can write your code in this editor

if amulet_count = 4
{
global.perso +=1
if global.perso = 4 global.perso=0

global.spot = -1

event_perform_object(obj_perso_placement,ev_create,0)

with id_torche instance_destroy();

instance_destroy()

}

