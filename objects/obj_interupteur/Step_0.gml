/// @description Quelqu'un me marche dessus !

if place_meeting(x,y,objp_poussable) or place_meeting(x,y,objp_poussable_shadow) or place_meeting(x,y,objp_mobil)
{
	active = true;
}
else
{
	active = false;
}