/// @description Insert description here
// You can write your code in this editor

if obj_initialisation.demo
{
	active = true	
} else
{
	ini_open("savedata.ini");
	active = ini_read_real("save", "Forme"+string(type), false);
	ini_close();
}

if active
{
	instance_create_layer(x,y,"Instances",obj_statue_light)
}

image_speed = 0
image_index = type