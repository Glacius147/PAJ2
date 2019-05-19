/// @description ?

switch global.perso
{
	case TRANSFORMATION.Humain:
	{
		instance_create_layer(x,y,"Instances_mobil",obj_perso_humain);
		break;
	}
	case TRANSFORMATION.Rat:
	{
		instance_create_layer(x,y,"Instances_mobil",obj_perso_rat);
		break;
	}
	case TRANSFORMATION.Neige:
	{
		instance_create_layer(x,y,"Instances_mobil",obj_perso_neige);
		break;
	}
	case TRANSFORMATION.Feu:
	{
		instance_create_layer(x,y,"Instances_mobil",obj_perso_feu);
		break;
	}	
}