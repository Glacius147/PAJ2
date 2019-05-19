/// @description Insert description here
// You can write your code in this editor


global.perso ++

#region unlock le perso pour les futures runs
ini_open("savedata.ini");
ini_write_real("save", "Forme0", true);
ini_write_real("save", "Forme"+string(global.perso), true);
ini_close()
#endregion

with obj_transition new_start = true;
scr_transition(TRANS_MODE.GOTO,room_entree_1)
