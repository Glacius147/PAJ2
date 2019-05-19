/// @description Action

//Activation lance flamme

anim_stop = true;

if not active_fire_sound{
active_fire_sound = true
fire_sound = audio_play_sound(snd_torche,1,true)	
	
}

alarm[0] = 5;
if _x_d = 0 and _y_d = 0
{
	_dir = dir_mouvement;
}
else
{
	_dir = point_direction(0,0,_x_d,_y_d);	
}
with instance_create_layer(x+15*dcos(_dir),y-25*dsin(_dir)+5,"Instances_mobil",obj_spray_feu)
{
	image_angle = other._dir;
}