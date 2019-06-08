/// @description Game GUI


//draw text
if (LEVEL_RUNNING == true) {

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_menu_24);
	draw_set_color(c_white);
	draw_text(20, 20, "P for Pause\nM for Menu\nF for Fullscreen\nR to Restart\nQ to Quit");
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(HALF_GUI_WIDTH, HALF_GUI_HEIGHT, "PUSH SHIFT TO LOSE");

}