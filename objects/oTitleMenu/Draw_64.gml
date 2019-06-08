

#region //draw screen

switch (screen){
	#region //draw menu main
	
	case menu_screen.main:
		//setting
		draw_set_halign(fa_center);
		draw_set_font(f);
		//setting end
		for(var i = 0; i < menuCount; i++){
			var txt = menu[i];
			if(cursor == i){
				//txt = string_insert("> ", txt, 0);
				var c = c_white;
			}else{
				var c = c_gray;
			}
			var screen_x = widthHalf;
			var screen_y = heightHalf - (fontSize * (i * 1.5)) + 150;
			draw_set_color(c);
			draw_text(screen_x, screen_y, txt);
		}
	break;
	
	#endregion

	#region //draw menu options
	
	case menu_screen.options:
		#region //options
		for(var i = 0; i < optionsCount; i++){
			//setting
			draw_set_halign(fa_right);
			draw_set_font(f);
			//setting end
			var txt = options[i];
			if(cursor_options == i){
				//txt = string_insert("> ", txt, 0);
				var c = c_white;
			}else{
				var c = c_gray;
			}
			var screen_x = widthHalf;
			var screen_y = heightHalf - (fontSize * (i * 1.5)) + 150;
			
			draw_set_color(c);
			draw_text(screen_x, screen_y, txt);
		}
		#endregion
		
		#region //Draw Language
		for(var i = 0; i < Language_Count; i++){
			//setting
			draw_set_halign(fa_left);
			draw_set_font(f);
			//setting end
			var txt = Language_option[i];
			if(cursor_Language == i){
				var c = c_white;
			}else{
				var c = c_gray;
			}
			var screen_x = widthHalf + (i*90);
			var screen_y = heightHalf - (fontSize * (1 * 1.5)) + 150;
			
			draw_set_color(c);
			draw_text(screen_x, screen_y, txt);
		}
		#endregion

	break;
	
	#endregion

}

#endregion







