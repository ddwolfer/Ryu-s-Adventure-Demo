/// @description Pause Menu



//draw title
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(title_font);

draw_set_color(c_white);
draw_text_transformed(HALF_GUI_WIDTH, 95, "OPTIONS", 1, 1, 0);
	
//draw menu
draw_set_font(menu_font);

for (var i = 0; i < array_length_1d(options_menu); i += 1) {
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	
	var col = c_white
	var xscale = 1;
	var yscale = 1;
	if (i == options_menu_select) {
		xscale = x_scale;
		yscale = y_scale;
		col = c_white;
		draw_rectangle((options_x - 200) * xscale, options_y + 2 + (spacing * i), options_x, options_y + (spacing * i) + 4, false);
	}
				
	draw_set_color(col);
	draw_text_transformed(options_x, options_y + (spacing * i) - 5, options_menu[i], xscale, yscale, 0);
	
	draw_set_halign(fa_left);
	switch (i) {
		case 0:
			var num = round(scr_map(MASTER_VOLUME, 0, 1, 0, 10));
			draw_text_transformed(options_x + 50, options_y + (spacing * i) - 5, num, xscale, yscale, 0);			
			break;
		case 1:
			var num = round(scr_map(MUSIC_VOLUME, 0, 1, 0, 10));
			draw_text_transformed(options_x + 50, options_y + (spacing * i) - 5, num, xscale, yscale, 0);	
			break;
		case 2:
			var num = round(scr_map(SOUND_VOLUME, 0, 1, 0, 10));
			draw_text_transformed(options_x + 50, options_y + (spacing * i) - 5, num, xscale, yscale, 0);	
			break;
	}
}



