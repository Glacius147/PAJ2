/// @description cutscene(text1,text2,...)
/// @function cutscene
/// @param sprite
/// @param text1
/// @param ...
// lance une cutscene avec les textes donnés 

obj_transition.cutscene_sprite = argument[0]

obj_transition.cutscene_text = array_create(argument_count-1,"")
for( var i=1;i<argument_count;i++)
{
		obj_transition.cutscene_text[i-1] = argument[i]
}


/*
obj_transition.cutscene_text[0] = "Je te maudis !"
obj_transition.cutscene_text[1] = "Tu passeras la fin de ton existence sous la forme d'un rat !"
*/
obj_transition.cutscene_counter = 0
obj_transition._cutscene_nb_letters = 1
obj_transition.mode = TRANS_MODE.CUTSCENE;