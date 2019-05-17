// En cas de degats, clignote en blanc


draw_self()

if frames_invul > 0 
{
	shader_set(shader_blink);
	draw_self();
	shader_reset();
	blink --;
}




