/// @description ?


enum PHASE_end{
	DEBUT,
	ARRIVEE_BOSS,
	VOL_AMUL,
	BOSSP1,
	BOSSP2,
	BOSSP3,
	BOSSP4
}

phase = PHASE_end.DEBUT;

//Pour eviter de bouger pendant les dialogues
boss_actif = false;