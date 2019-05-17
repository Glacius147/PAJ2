// En cas de degats, clignote en blanc


draw_self()

if frames_invul > 0 
{
	if frames_invul/6 % 2 < 1
	{
		shader_set(shader_blink);
		draw_self();
		shader_reset();
	}
	frames_invul --;
}




