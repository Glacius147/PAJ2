/// @description Insert description here
// You can write your code in this editor

if instance_exists(objp_perso)
{
direction = point_direction(x,y,objp_perso.x,objp_perso.y)
}
else {
	instance_destroy()
}
image_speed=0

speed=3
old_speed = speed