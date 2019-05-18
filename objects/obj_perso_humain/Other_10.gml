/// @description Action
event_inherited();


//On place un objet qui va tester les colision pour blesser les monstres


scr_sound(snd_frappe,true,false)

with instance_create_layer(x,y,"Instances",obj_attaque_epee)
{
	image_angle = other.dir_mouvement;
	if image_angle = 270 y += 10;
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, objp_mechant, _list, false);
	if _num > 0
	{
	for (var i = 0; i < _num; ++i;)
		{
			with _list[|i] scr_degats(other.degats);
			
		}
	}
	ds_list_destroy(_list);
}