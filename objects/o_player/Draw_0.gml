draw_sprite_ext(s_player_shadow,0,x,y+1, 1, -.75,0,c_white,.5);

draw_self();

if(flash > 0)
{
	flash -= 0.05;
	
	gpu_set_blendmode(bm_add);
	shader_set(shd_flash);
	shd_alpha = shader_get_uniform(shd_flash, "_alpha");
	shader_set_uniform_f(shd_alpha, flash);

	draw_self();

	shader_reset();
	gpu_set_blendmode(bm_normal);
}
