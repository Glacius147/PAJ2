/// @description ?


randomise();

global.spot = -1;

demo = false

room_desti = room_entree_1

menu_on = true

global.perso = TRANSFORMATION.Humain


enum OPTION_MENU{
	DEMO,
	HISTOIRE,
	HISTOIRE_NEW,
	QUIT
}

nb_option = 4

_cooldownmenu = 0
current_option = OPTION_MENU.DEMO

text_option[OPTION_MENU.QUIT] = "Quitter"
text_option[OPTION_MENU.HISTOIRE_NEW] = "Mode Histoire (nouvelle partie)"
text_option[OPTION_MENU.HISTOIRE] = "Mode Histoire (Continuer)"
text_option[OPTION_MENU.DEMO] = "Mode Démo (Transformations débloquées)"