
switch phase
{
	case PHASE_end.DEBUT:
	{
		coffre_ouvert = true;
		with obj_coffre
		{
			if image_index = 0 other.coffre_ouvert = false;
		}
		if coffre_ouvert 
		{
			phase = PHASE_end.ARRIVEE_BOSS;		
			sprite_index = spr_boss;
			global.ambientShadowIntensity = 0.3;
			scr_cutscene(spr_wizard,"Qui ose entrer ici ?",0)
			boss_actif = false;
		}
		break;	
	}
	
	case PHASE_end.ARRIVEE_BOSS:
	{
		if y > obj_porte_boss.y - 45 and y < obj_porte_boss.y + 20
		{
			obj_porte_boss.ouvert = true;
		}
		else
		{
			obj_porte_boss.ouvert = false;
		}
		
		
		if boss_actif
		{
			if y < obj_porte_boss.y + 30
			{
				y ++;			
			}
			else
			{
				phase = PHASE_end.VOL_AMUL;
				scr_cutscene(spr_wizard,"Encore toi ?","Et je vois que tu m'as pris mon amulette",1);
			}
		}
		break;	
	}	
	
}