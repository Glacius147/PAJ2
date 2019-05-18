/// @description Quelqu'un me marche dessus !

active = false;

with obj_light
{
	
	var dist = point_distance(light[|eLight.X],light[|eLight.Y],other.x,other.y)
	
	if  dist < light[|eLight.Range]/2 and 
	abs(scr_wrap(point_direction(light[|eLight.X],light[|eLight.Y],other.x,other.y)-light[|eLight.Direction],-180,180)) < light[|eLight.Angle]/2
	{
		
		
		var ligne_de_vue = true
		for (var i = 1; i < dist; i++)
		{
			if position_meeting(other.x*i/dist + light[|eLight.X]*(1-i/dist),other.y*i/dist + light[|eLight.Y]*(1-i/dist),obj_shadow_caster)
			{
				ligne_de_vue = false				
			}
		}
		
		if ligne_de_vue other.active = true;
	}
}