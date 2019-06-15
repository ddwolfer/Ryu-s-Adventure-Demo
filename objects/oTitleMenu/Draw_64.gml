
#region //draw screen

switch (screen){
	#region //draw menu main UI
	
	case menu_screen.main:
		//setting
		draw_set_halign(fa_center);
		draw_set_font(f);
		//setting end
		for(var i = 0; i < menuCount; i++){
			var txt = menu[oGame.languageIndex, i];
			if(cursor == i){
				//txt = string_insert("> ", txt, 0);
				var menuCol = c_white;
			}else{
				var menuCol = c_gray;
			}
			var screen_x = widthHalf;
			var screen_y = heightHalf - (fontSize * (i * 1.5)) + 150;
			draw_set_color(menuCol);
			draw_text(screen_x, screen_y, txt);
		}
	break;
	
	#endregion

	#region //draw menu options UI
	
	case menu_screen.options:
		#region //options UI
		for(var i = 0; i < optionsCount; i++){
			//setting
			draw_set_halign(fa_right);
			if(i == 0){draw_set_halign(fa_center);}
			draw_set_font(f);
			//setting end
			var txt = options[oGame.languageIndex, i];
			if(cursor_options == i){
				//txt = string_insert("> ", txt, 0);
				var optionsCol = c_white;
			}else{
				var optionsCol = c_gray;
			}
			var screen_x = widthHalf;
			var screen_y = heightHalf - (fontSize * (i * 1.5)) + 150;
			
			draw_set_color(optionsCol);
			draw_text(screen_x, screen_y, txt);
		}
		#endregion
		
		#region //Draw Language UI
		for(var i = 0; i < Language_Count; i++){
			//setting
			draw_set_halign(fa_left);
			draw_set_font(f);
			//setting end
			var txt = Language_option[i];
			if(cursor_Language == i && cursor_options==1){
				var LanguageCol = c_white;
			}else{
				var LanguageCol = c_gray;
			}
			var screen_x = widthHalf + (i*fontSize*9/2); 
			var screen_y = heightHalf - (fontSize * (1 * 1.5)) + 150;
			
			draw_set_color(LanguageCol);
			draw_text(screen_x, screen_y, txt);
		}
		#endregion
	
		#region //Draw Music UI
		var num = round(scrControlSound(MUSIC_VOLUME, 0, 1, 0, 10));
		draw_set_halign(fa_left);
		draw_set_font(f);
			
		if(cursor_options == 3){
			var musicVolCol = c_white;
		}else{
			var musicVolCol = c_gray;
		}
		
		var screen_x = widthHalf ;
		var screen_y = heightHalf - (fontSize * (3 * 1.5)) + 150;
		
		draw_set_color(musicVolCol);
		//draw volume bar
		for(i=0 ; i<num ; i++){
			draw_rectangle( (widthHalf+ (fontSize*3/2) )+i*fontSize + 10,screen_y+fontSize,(widthHalf+(fontSize*5/2))+i*fontSize + 10,screen_y+5,false);
		}
		draw_rectangle( (widthHalf+(fontSize*3/2))+i*fontSize + 10,screen_y+fontSize,(widthHalf+(fontSize*5/2))+9*fontSize + 10,screen_y+5,true);
		//draw volume bar end
		draw_text(screen_x, screen_y, num);
		#endregion
		
		#region //Draw SFX UI
		var num = round(scrControlSound(SOUND_VOLUME, 0, 1, 0, 10));
		draw_set_halign(fa_left);
		draw_set_font(f);
		
		if(cursor_options == 2){
			var SFXVolCol = c_white;
		}else{
			var SFXVolCol = c_gray;
		}
		var screen_x = widthHalf ;
		var screen_y = heightHalf - (fontSize * (2 * 1.5)) + 150;
		
		draw_set_color(SFXVolCol);
		//draw volume bar
		for(i=0 ; i<num ; i++){
			draw_rectangle( (widthHalf+ (fontSize*3/2) )+i*fontSize+ 10,screen_y+fontSize,(widthHalf+(fontSize*5/2))+i*fontSize+ 10,screen_y+5,false);
		}
		draw_rectangle( (widthHalf+(fontSize*3/2))+i*fontSize+ 10,screen_y+fontSize,(widthHalf+(fontSize*5/2))+9*fontSize+ 10,screen_y+5,true);
		//draw volume bar end
		draw_text(screen_x, screen_y, num);
		#endregion
	break;
	
	#endregion

}

#endregion







