/// @description Dégats en cas de contact.

with other 
{
	if roulade < 5 scr_degats(other.degats);
}

event_user(2);