



if _x = 0 and _y = 0
{
	image_speed = 0;
	image_index = 0;
}
else
{
	image_speed = 1;
	if abs(_x) > abs(_y)
	{
		if _x > 0
		{
			sprite_index = anim_d;
		}
		else
		{
			sprite_index = anim_g;
		}
	}
	else
	{
		if _y > 0
		{
			sprite_index = anim_b;
		}
		else
		{
			sprite_index = anim_h;
		}	
	}
}