/// @description Splash Screen


//draw text
if (made_in_shown == false) {
	draw_set_font(fnt_title_60);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(HALF_GUI_WIDTH, HALF_GUI_HEIGHT, made_in_text);
	
} else if (made_in_shown == true) && (made_by_shown == false) {
	draw_set_font(fnt_title_60);
	draw_text(HALF_GUI_WIDTH, HALF_GUI_HEIGHT, made_by_text);
}