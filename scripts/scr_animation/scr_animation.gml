




if _x = 0 and _y = 0
{
	image_speed = 0;
	image_index = 0;
}
else
{
	image_xscale = 1;
	image_speed = 1;
	if abs(_x) > abs(_y)
	{
		if _x > 0
		{
			sprite_index = anim_d;
			dir_mouvement = 0;
		}
		else
		{
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
		if _y > 0
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