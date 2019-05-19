//Animation des objp_mobils

//Roulade
if roulade > 0
{
	if roulade = duree_roulade
	{
		image_index = 0;
		
		//Choix de la direction de l'anilation d'action en fonction de la direction précédente.
		switch sprite_index
		{
			case anim_b:
			case anim_a_b:
			{
				sprite_index = anim_r_b;
				break;
			}
			case anim_h:
			case anim_a_h:
			{
				sprite_index = anim_r_h;
				break;
			}				
			case anim_d:
			case anim_a_d:
			{
				sprite_index = anim_r_d;
				break;
			}				
			case anim_g:
			case anim_a_g:
			{
				//Vérification du cas ou le sprite gauche et le miroir du sprite droit.				
				if anim_r_g != noone
				{
				sprite_index = anim_r_g;
				image_xscale = 1;	
				break;
				}
				else
				{
					sprite_index = anim_r_d;						
					image_xscale = -1;						
				}
			}	
		}
	}	
}//Si une animation prioritaire n'est pas en cours
else if !anim_stop
{
	//Si le perso est immobile.
	if _x_d = 0 and _y_d = 0
	{
		image_speed = 0;
		image_index = 0;
	}
	else
	{
		//Choix du sprite parmis les 4 directions
		image_xscale = 1;
		image_speed = 1;
		if abs(_x_d) > abs(_y_d)
		{
			if _x_d > 0
			{
				sprite_index = anim_d;
				dir_mouvement = 0;
			}
			else
			{
				//Vérification du cas ou le sprite gauche et le miroir du sprite droit.
				if anim_g = noone
				{
					image_xscale = -1;
					sprite_index = anim_d;
				}
				else
				{
					sprite_index = anim_g;
				}
				dir_mouvement = 180;
			}
		}
		else
		{
			if _y_d > 0
			{
				sprite_index = anim_b;
				dir_mouvement = 270;
			}
			else
			{
				sprite_index = anim_h;
				dir_mouvement = 90;
			}	
		}
	}
}
else
{
	//Lancement de l'animation d'action
	if !anim_started
	{
		anim_started = true;
		image_speed = 1;
		image_index = 0;
		
		//Choix de la direction de l'anilation d'action en fonction de la direction précédente.
		switch sprite_index
		{
			case anim_b:
			{
				sprite_index = anim_a_b;
				break;
			}
			case anim_h:
			{
				sprite_index = anim_a_h;
				break;
			}				
			case anim_d:
			{
				sprite_index = anim_a_d;
				break;
			}				
			case anim_g:
			{
				//Vérification du cas ou le sprite gauche et le miroir du sprite droit.				
				if anim_a_g != noone
				{
				sprite_index = anim_a_g;
				image_xscale = 1;	
				break;
				}
				else
				{
					sprite_index = anim_a_d;						
					image_xscale = -1;						
				}
			}		
		}
	}
}