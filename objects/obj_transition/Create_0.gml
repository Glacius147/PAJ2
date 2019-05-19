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




