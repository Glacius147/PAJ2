/// @description ?

// Inherit the parent event
event_inherited();

image_xscale = 1.2;
image_yscale = 1.2;
image_speed = 0.75

timer = 0

if instance_exists(obj_gestion_the_end)
{
	alarm[2]=10

	with obj_sound{
		event_user(0)	
	}
	phase_boss = PHASE.NORMAL1
	boss_end = true;
}
else
{
	event_user(0);
}

fireball_speed=3
to_launch = 2
interval_fireball = 15
panique = 0


enum PHASE{
	NORMAL1,
	SPAM,
	VENER,
	VENERSPAM,
	DEFENSE
}