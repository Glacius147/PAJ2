/// @description Gestion glissade

#region Gestion des glissades

with objp_mobil glisse = false;


with obj_eau
{
	if gelee
	{
		mask_index = spr_eau;
		
		var _list = ds_list_create();
		var _num = instance_place_list(x, y, objp_mobil, _list, false);
		if _num > 0
		{
		for (var i = 0; i < _num; ++i;)
			{
				_list[|i].glisse = true;
			}
		}
		ds_list_destroy(_list);	
		
		mask_index = spr_empty;
	}	
}
#endregion