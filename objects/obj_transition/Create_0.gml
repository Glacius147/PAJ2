/// @description Initialisation

draw_set_font(font_menu)

w = display_get_gui_width();
h = display_get_gui_height();

enum TRANS_MODE
{
	OFF,
	GOTO,
	NEXT,
	RESTART,
	INTRO,
	PAUSE,
	DEATH,
	CUTSCENE
}

//items du menu
enum MENU_ITEM
{
	RETURN,
	MUSIC,
	SFX,
	RESTART,
	QUIT
}

//nombre d'éléments ds le menu
nb_item_menu = 5

//Element selectionné ds le menu : num_menu

mode = TRANS_MODE.INTRO;

//percent = 1;

target = room;

cutscene_text = array_create(1,"")


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
