if( layer_get_visible(layer_get_id("Lighting2"))  ){
	gpu_set_blendmode(bm_subtract);
	surface_set_target(oLight.light);
	draw_self();
	surface_reset_target();
	gpu_set_blendmode(bm_normal);
}

