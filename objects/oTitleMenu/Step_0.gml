getInput();

#region //main screen


switch(screen){
	#region //main page
	case menu_screen.main:
		//controll main
		if(upMenu){
			audio_play_sound(sdMenu, 2, false);
			cursor += 1;
			if(cursor >= menuCount) cursor = 0;
		}

		if(downMenu){
			audio_play_sound(sdMenu, 2, false);
			cursor -= 1;
			if(cursor < 0) cursor = menuCount - 1;
		}

		if(start){ //if you sekect something
			audio_play_sound(sdMenuComfirm, 2, false);
			menuCommited = cursor;
			//result
			switch(menuCommited){
				case 3:  //Start
					with(oGame){
						SartWithContinue = false;
						targetRoom = r1_0;
						doTransition = true;
					}
				break;
				
				case 2: //Continue
					with(oGame){
						if(file_exists("savedfile.sav")){
							show_debug_message("Yes you got it");
							var wrapper = LoadJSONFromFile("savedfile.sav");
							var list = wrapper[? "ROOT"];
							
							for(var i = 0; i < ds_list_size(list); i++){
								var map = list[| i];
								var obj = map[? "obj"];
								with(instance_create_layer(0, 0, layer , asset_get_index(obj))){
									oRyuController.deathCount = map[? "deathCount"];
									ContinueX = map[? "oRyuX"];
									ContinueY = map[? "oRyuY"];
									RoomContinue = map[? "room"];
									show_debug_message(string(RoomContinue)+string(layer_get_name(layer))+"x :"+string(ContinueX) + "and Y : "+string(ContinueY));
								}
							}
							ds_map_destroy(wrapper);
							//show_debug_message(" Did I Loaded?" + "+" +string(roomContinue));
						}else{
							show_debug_message("NOOOOOOOOOOOOOOOOOOOOOOO");
						}
						
						targetRoom = int64(RoomContinue);
						doTransition = true;
						SartWithContinue = true;
						
						
					}
				break;
	
				case 1: //Options
					screen = menu_screen.options;
				break;
	
				case 0: //Quit
					game_end();
				break;
			}
			
		}
		
		
	break;
	#endregion
	
	#region //option page
	case menu_screen.options:
		//controll option
		if(upMenu){
			audio_play_sound(sdMenu, 2, false);
			cursor_options += 1;
			if(cursor_options >= optionsCount) cursor_options = 0;
		}

		if(downMenu){
			audio_play_sound(sdMenu, 2, false);
			cursor_options -= 1;
			if(cursor_options < 0) cursor_options = optionsCount - 1;
		}
		
		if(start){ //if you select something
			audio_play_sound(sdMenuComfirm, 2, false);
			optionsCommited = cursor_options;
			
			//result
			switch(optionsCommited){
				case 3:
				break;
				case 2:
				break;
				case 0: //Back To Menu
					screen = menu_screen.main;
				break;
			}
		}
		
		switch(cursor_options){
			case 1: //Language
				if(leftMenu){
					audio_play_sound(sdMenu, 2, false);
					cursor_Language -=1
					if(cursor_Language < 0) cursor_options = Language_Count - 1;
				}else if (rightMenu){
					audio_play_sound(sdMenu, 2, false);
					cursor_Language +=1
					if(cursor_Language > Language_Count) cursor_options = 0;
				}
			break;
			case 2: //SFX
				if(leftMenu){
					audio_play_sound(sdMenu, 2, false);
					scrChangeSoundVolume(-0.1);
				}else if (rightMenu){
					audio_play_sound(sdMenu, 2, false);
					scrChangeSoundVolume(0.1);
				}
			break;
			case 3: //Music
				if(leftMenu){
					audio_play_sound(sdMenu, 2, false);
					scrChangeMusicVolume(-0.1);
				}else if (rightMenu){
					audio_play_sound(sdMenu, 2, false);
					scrChangeMusicVolume(0.1);
				}
			break;
		}
	break;
	#endregion

}
	
#endregion







