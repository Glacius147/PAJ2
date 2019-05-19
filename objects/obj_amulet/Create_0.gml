/// @description Insert description here
// You can write your code in this editor

image_index=type
image_speed=0

ini_open("savedata.ini");
done = ini_read_real("save", "Amulet"+string(type), false);
ini_close();

if done 
{
	obj_transition.amulet[type]=true
	obj_transition.amulet_count++
	instance_destroy();
}