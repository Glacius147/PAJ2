/// @description Insert description here
// You can write your code in this editor


ini_open("savedata.ini");
active = ini_read_real("save", "Forme"+string(type), false);
ini_close();

image_speed = 0
image_index = type