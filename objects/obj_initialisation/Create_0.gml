/// @description ?


randomise();

global.spot = -1;




global.perso = TRANSFORMATION.Humain


enum OPTION_MENU{
	DEMO,
	HISTOIRE,
	HISTOIRE_NEW,
	QUIT
}

nb_option = 4

current_option = OPTION_MENU.DEMO

text_option[OPTION_MENU.QUIT] = "Quitter"
text_option[OPTION_MENU.HISTOIRE_NEW] = "Mode Histoire (nouvelle partie)"
text_option[OPTION_MENU.QUIT] = "Mode Histoire (Continuer)"
text_option[OPTION_MENU.QUIT] = "Mode Démo (Transformations débloquées)"