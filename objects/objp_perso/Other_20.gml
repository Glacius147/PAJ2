/// @description Upon death
// You can write your code in this editor

/*

*/
#region liste de taunts du wizard
list_taunts[4] =  "CREVE, CHAROGNE !"
list_taunts[3] =  "LES PUISSANTS TRIOMPHENT TOUJOURS DES FAIBLES !"
list_taunts[2] =  "JE DONNERAI TES RESTES A MANGER AUX MONSTRES !"
list_taunts[1] =  "EXACTEMENT COMME PREVU !"
list_taunts[0] =  "HAHAHAHAHAHA, TA PATHETIQUE EXISTENCE S'ACHEVE ICI !"
#endregion

scr_cutscene(spr_wizard,list_taunts[irandom_range(0,array_length_1d(list_taunts)-1)],9)
