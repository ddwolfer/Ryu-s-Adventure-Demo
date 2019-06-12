/// @description Insert description here
// You can write your code in this editor

if(drawGrayBackround == true){
	#region draw blue background
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(0,0,width,height,false);
	draw_set_alpha(1);
	#endregion
	
		#region //options UI
		for(var i = 0; i < optionsCount; i++){
			//setting
			draw_set_halign(fa_right);
			if(i < 3){draw_set_halign(fa_center);}
			draw_set_font(levelMenuFont);
			//setting end
			var txt = options[i];
			if(cursor_options == i){
				//txt = string_insert("> ", txt, 0);
				var optionsCol = c_white;
			}else{
				var optionsCol = c_gray;
			}
			var screen_x = widthHalf;
			var screen_y = heightHalf - (fontSize * (i * 1.5)) + 100;
			
			draw_set_color(optionsCol);
			draw_text(screen_x, screen_y, txt);
		}
		#endregion
	
		#region //Draw Music UI
		var num = round(scrControlSound(MUSIC_VOLUME, 0, 1, 0, 10));
		draw_set_halign(fa_left);
		draw_set_font(levelMenuFont);
			
		if(cursor_options == 5){
			var musicVolCol = c_white;
		}else{
			var musicVolCol = c_gray;
		}
		
		var screen_x = widthHalf ;
		var screen_y = heightHalf - (fontSize * (5 * 1.5)) + 100;
		
		draw_set_color(musicVolCol);
		//draw volume bar
		for(i=0 ; i<num ; i++){
			draw_rectangle( (widthHalf+ (fontSize*3/2) )+i*fontSize ,screen_y+fontSize,(widthHalf+(fontSize*5/2))+i*fontSize,screen_y+5,false);
		}
		draw_rectangle( (widthHalf+(fontSize*3/2))+i*fontSize ,screen_y+fontSize,(widthHalf+(fontSize*5/2))+9*fontSize,screen_y+5,true);
		//draw volume bar end
		draw_text(screen_x, screen_y, num);
		#endregion
		
		#region //Draw SFX UI
		var num = round(scrControlSound(SOUND_VOLUME, 0, 1, 0, 10));
		draw_set_halign(fa_left);
		draw_set_font(levelMenuFont);
		
		if(cursor_options == 4){
			var SFXVolCol = c_white;
		}else{
			var SFXVolCol = c_gray;
		}
		var screen_x = widthHalf ;
		var screen_y = heightHalf - (fontSize * (4 * 1.5)) + 100;
		
		draw_set_color(SFXVolCol);
		//draw volume bar
		for(i=0 ; i<num ; i++){
			draw_rectangle( (widthHalf+ (fontSize*3/2) )+i*fontSize ,screen_y+fontSize,(widthHalf+(fontSize*5/2))+i*fontSize,screen_y+5,false);
		}
		draw_rectangle( (widthHalf+(fontSize*3/2))+i*fontSize ,screen_y+fontSize,(widthHalf+(fontSize*5/2))+9*fontSize,screen_y+5,true);
		//draw volume bar end
		draw_text(screen_x, screen_y, num);
		#endregion
		
		#region //Draw Language UI
		for(var i = 0; i < Language_Count; i++){
			//setting
			draw_set_halign(fa_left);
			draw_set_font(levelMenuFont);
			//setting end
			var txt = Language_option[i];
			if(cursor_Language == i && cursor_options==3){
				var LanguageCol = c_white;
			}else{
				var LanguageCol = c_gray;
			}
			var screen_x = widthHalf + (i*fontSize*9/2); 
			var screen_y = heightHalf - (fontSize * (3 * 1.5)) + 100;
			
			draw_set_color(LanguageCol);
			draw_text(screen_x, screen_y, txt);
		}
		#endregion
}




