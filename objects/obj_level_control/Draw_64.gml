/// @description 


//draw level start
if (LEVEL_START == false) && (LEVEL_RUNNING == false) {
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_title_60);
	draw_set_color(c_white);
	draw_text(HALF_GUI_WIDTH, HALF_GUI_HEIGHT, "PUSH SPACE TO START");

}


//draw level over
if (LEVEL_OVER == true) {
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_title_60);
	draw_set_color(c_white);
	draw_text(HALF_GUI_WIDTH, HALF_GUI_HEIGHT, "GAME OVER");
	
}

