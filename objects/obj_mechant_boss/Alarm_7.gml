/// @description cutscene
// You can write your code in this editor

switch global.perso
{
	case (TRANSFORMATION.Humain):
	{
		scr_cutscene(spr_wizard,"OH ? T'as cru que c'était noël ?","PRENDS CA !",1)
		break;
	}
	case (TRANSFORMATION.Neige):
	{
		scr_cutscene(spr_wizard,"Encore toi ? Bon, cette fois, c'est fini.","DEGAGE !",1)
		break;
	}
	case (TRANSFORMATION.Rat):
	{
		scr_cutscene(spr_wizard,"MAIS ?","Le personnel de qualité se fait rare, je vais devoir virer tous ces incapables.", "Allez, va jouer ailleurs !",1)
		break;
	}
	case (TRANSFORMATION.Feu):
	{
		scr_cutscene(spr_wizard,"QUOI ?","ENCORE !","IL FAUT TOUT FAIRE SOI MEME !","MEURT !",7)
		break;
	}
}