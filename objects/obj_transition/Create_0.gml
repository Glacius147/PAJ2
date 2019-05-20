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

mode = -1;//TRANS_MODE.INTRO;

//percent = 1;

target = room;

cutscene_text = array_create(1,"")



amulet[3]=false
amulet[2]=false
amulet[1]=false
amulet[0]=false

amulet_count = 0

for (var i=0;i<4;i++)
{
ini_open("savedata.ini");
done = ini_read_real("save", "Amulet"+string(i), false);
ini_close();

if done 
{
	obj_transition.amulet[i]=true
	obj_transition.amulet_count++
}
}


