/// @description Insert description here
// You can write your code in this editor


global.perso ++

#region unlock le perso pour les futures runs
ini_open("savedata.ini");
switch global.perso
{
	case TRANSFORMATION.Feu:
	{
		ini_write_real("save", "Feu", true);
		break;
	}
	case TRANSFORMATION.Neige:
	{
		ini_write_real("save", "Neige", true);
		break;
	}
		case TRANSFORMATION.Rat:
	{
		ini_write_real("save", "Rat", true);
		break;
	}
}
#endregion

ini_close()
with obj_transition new_start = true;
scr_transition(TRANS_MODE.GOTO,room_entree_1)
