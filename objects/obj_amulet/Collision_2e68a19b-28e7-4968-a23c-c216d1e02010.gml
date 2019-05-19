/// @description Insert description here
// You can write your code in this editor


obj_transition.amulet[type] = true
obj_transition.amulet_count+=1

if obj_transition.amulet_count<4
{
scr_cutscene(spr_empty,"Un morceau d'amulette de pouvoir ! Plus que "+string(4-obj_transition.amulet_count)+" morceaux à récupérer !",-1)
}
else
{
scr_cutscene(spr_empty,"L'amulette de pouvoir est complète ! Je peux à présent me transformer à volonté !",-1)
}

instance_destroy()