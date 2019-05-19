/// @description Gestion phases
// You can write your code in this editor

switch phase_boss
{
	case PHASE.NORMAL1:	
	{
	to_launch = 2
	fireball_speed =5
	interval_fireball = 15
	vitesse_base = 3
	alarm[3]= 1
	break;
	}
	case PHASE.SPAM:	
	{
	to_launch = 20
	fireball_speed =5
	interval_fireball = 15
	alarm[3]= 1
	phase_boss = PHASE.NORMAL1
	break;
	}
	case PHASE.VENER:	
	{
	to_launch = 3
	fireball_speed =max(fireball_speed,7)
	interval_fireball = 10
	vitesse_base = 4
	alarm[3]= 1
	break;
	}
	case PHASE.VENERSPAM:	
	{
	to_launch = 30
	fireball_speed =max(fireball_speed,8)
	interval_fireball = 5
	alarm[3]= 1
	phase_boss = PHASE.VENER
	break;
	}
	case PHASE.DEFENSE:	
	{
	panique = -200
	fireball_speed +=1
	alarm[4]= 1
	break;
	}
}
