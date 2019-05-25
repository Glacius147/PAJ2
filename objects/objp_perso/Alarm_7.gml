/// @description Déplacement vers les vetements verts.

_x_d = dcos(point_direction(x,y,obj_cadavre_bis.x,obj_cadavre_bis.y));
_y_d = -dsin(point_direction(x,y,obj_cadavre_bis.x,obj_cadavre_bis.y));

x += _x_d;
y += _y_d;

scr_animation();

if point_distance(x,y,obj_cadavre_bis.x,obj_cadavre_bis.y) < 5
{
	sprite_index  = spr_perso_vert;
	instance_destroy(obj_cadavre_bis);
	alarm[8] = 120;
}
else
{
	alarm[7] = 1;
}