/// @description 
draw_self();

if(flash > 0){
	flash -= 0.1;
	shader_set(shdFlash);
	shdAlpha = shader_get_uniform(shdFlash, "_alpha")
	shader_set_uniform_f(shdAlpha, flash)
	draw_self();
	shader_reset();
}