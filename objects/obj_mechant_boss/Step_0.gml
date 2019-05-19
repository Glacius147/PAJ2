/// @description Insert description here
// You can write your code in this editor
if timer >0{
y+=vitesse
timer --
}
else{

	//Si le déplacement est possible
	if (obj_transition.mode == TRANS_MODE.OFF or obj_transition.mode == TRANS_MODE.DEATH) and frames_invul <= 0
	{
		_d = distance_to_object(objp_perso)
		if _d<125{
		panique +=floor(1+_d/50)
		} else
		{
		panique = max(panique-4,0)	
		}
		//On applique la vitesse de déplacement
		_x += dep_x*vitesse;
		_y += dep_y*vitesse;


		_x_d = _x;
		_y_d = _y;
	
		//On se déplace
		while abs(_x) >= 1
		{
			scr_deplacement(_x/abs(_x),0);	
			_x = _x - _x/abs(_x);
		}

		while abs(_y) >= 1
		{
			scr_deplacement(0,_y/abs(_y));	
			_y = _y - _y/abs(_y);
		}


	

	}

	if (obj_transition.mode == TRANS_MODE.OFF)
	{
	//scr_animation()

		if pv=15
		{
			pv--
			phase_boss=PHASE.SPAM
			scr_cutscene(spr_wizard,"TECHNIQUE ANCESTRAAAAAAAAAAAAAAAAAAAAAAALE !",3)
		}
		if pv<15 and phase_boss=PHASE.NORMAL1{
			if irandom(5000)<1
			{
				phase_boss=PHASE.SPAM
				alarm[2]=1
			}	
		}

		if pv=10 and phase_boss=PHASE.NORMAL1{
			pv--
			phase_boss=PHASE.VENERSPAM
			with obj_sound{
				event_user(0)	
			}
			panique = 0
			scr_cutscene(spr_wizard,"Ok ça c'était l'échaufement.","MAINTENANT JE SUIS VENER !!!!"," DIIIIIIIIIIIIIIIIEEEEEE ",3)
		}
		
		if pv<10 and phase_boss=PHASE.VENER{
			if irandom(5000)<1
			{
			phase_boss=PHASE.VENERSPAM
			alarm[2]=1
			}
		}
		
		if panique >100 and (phase_boss=PHASE.VENER or phase_boss=PHASE.NORMAL1) {
			old_phase = phase_boss
			phase_boss=PHASE.DEFENSE
			audio_play_sound(snd_coup_epee,1,false)
			vitesse_base = 0
			alarm[2]=10
			panique = 0
		}
		//Le monstre meurt (A étoffer)
		if pv <= 0 event_user(10);
	}
}

if (obj_transition.mode == TRANS_MODE.PAUSE or obj_transition.mode == TRANS_MODE.CUTSCENE){
	if alarm[2] != 0 alarm[2]+=1;	
	if alarm[3] != 0 alarm[3]+=1;
	
}