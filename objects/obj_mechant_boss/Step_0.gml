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
		if _d < 125{
		panique += floor(1 + _d/50)
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

		if pv = 15
		{
			pv--
			phase_boss=PHASE.SPAM
			objp_perso.anim_stop = false;
			scr_cutscene(spr_wizard,"TECHNIQUE ANCESTRAAAAAAAAAAAAAAAAAAAAAAALE !", "SPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAM !",3)
			if boss_end 
			{
				sprite_index = spr_boss_neige;
				sprite_attaque = spr_boule_neige;
			}
		}
		
		if pv < 15 and phase_boss=PHASE.NORMAL1{
			if irandom(1000) < 1
			{
				phase_boss = PHASE.SPAM
				alarm[2] = 1
			}	
		}

		if pv = 10 and phase_boss=PHASE.NORMAL1{
			scr_degats(1);
			phase_boss = PHASE.VENERSPAM;
			with obj_sound{
				event_user(1);
				}
			panique = 0;
			objp_perso.anim_stop = false;
			scr_cutscene(spr_wizard,"Ok ça c'était l'échaufement.","MAINTENANT JE SUIS VENER !!!!"," CREEEEEEEEEEEEEEEVE ",3)
			if boss_end 
			{
				sprite_index = spr_boss_feu;
				sprite_attaque = spr_boule_feu;
			}
		}
		
		if pv < 10 and phase_boss=PHASE.VENER{
			if irandom(1000)<1
			{
			phase_boss=PHASE.VENERSPAM
			alarm[2]=1
			}
		}
		
		if panique > 100 and (phase_boss=PHASE.VENER or phase_boss=PHASE.NORMAL1) {
			old_phase = phase_boss
			phase_boss=PHASE.DEFENSE
			audio_play_sound(snd_chargement,1,false)
			vitesse = 0
			alarm[0]=70
			alarm[2]=60
			panique = 0
		}
		//Le monstre meurt (A étoffer)
		if pv <= 0 and !boss_end event_user(10);
		
		if pv = 0 and boss_end
		{
			pv = -1;
			phase_boss = PHASE.FUITE;
			with obj_sound{
				event_user(1);
				}
			panique = 0;
			objp_perso.anim_stop = false;
			scr_cutscene(spr_wizard,"Tu es fort, mais il me reste encore un tour dans mon sac !",3)
			sprite_index = spr_perso_rat_bas;
			sprite_attaque = spr_empty;
			with instance_create_layer(x,y,"Instances",obj_cadavre_bis) image_index = 1;
			vitesse = 3;
		}			
		
		if pv <= -2
		{
			scr_cutscene(spr_wizard,"Quel transformation de...",10)
		}
	}
}

if (obj_transition.mode == TRANS_MODE.PAUSE or obj_transition.mode == TRANS_MODE.CUTSCENE){
	if alarm[2] != 0 alarm[2]+=1;	
	if alarm[3] != 0 alarm[3]+=1;
	
}