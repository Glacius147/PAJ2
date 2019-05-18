//rend les murs avec trou intengibles
instance_destroy(obj_mur_trou_rat_obst);

// Inherit the parent event
event_inherited();

//remet des obstacles sur les trous
with obj_mur_trou instance_create_depth(x,y,0,obj_mur_trou_rat_obst);