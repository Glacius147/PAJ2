/// @description Action
with instance_create_layer(x,y,"Instances",obj_attaque_epee)
{
	image_angle = other.dir_mouvement;
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_mechant, _list, false);
	if _num > 0
	{
	for (var i = 0; i < _num; ++i;)
		{
			with _list[|i] scr_degats(other.degats);
					
		}
	}
ds_list_destroy(_list);
}