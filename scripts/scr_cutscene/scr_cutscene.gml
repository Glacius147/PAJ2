/// @description cutscene(text1,text2,...)
/// @function cutscene
/// @param text1
/// @param text2
// lance une cutscene avec les textes donnés 

obj_transition.cutscene_text = array_create(argument_count,"")
for( var i=0;i<argument_count;i++)
{
		obj_transition.cutscene_text[i] = argument[i]
}

/*
obj_transition.cutscene_text[0] = "Je te maudis !"
obj_transition.cutscene_text[1] = "Tu passeras la fin de ton existence sous la forme d'un rat !"
*/
obj_transition.cutscene_counter = 0
obj_transition._cutscene_nb_words = 1
obj_transition.mode = TRANS_MODE.CUTSCENE;