//rend les murs avec trou intengibles
instance_destroy(obj_mur_trou_rat_obst);

//
if random(1000)<1
{
audio_play_sound(snd_rat,1,false)	
}

// Inherit the parent event

event_inherited();


//remet des obstacles sur les trous
with obj_mur_trou 
{
	with instance_create_layer(x,y,"Instances_ombre",obj_mur_trou_rat_obst)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;	
		image_angle = other.image_angle;
	}
}