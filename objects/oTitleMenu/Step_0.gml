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
						targetRoom = rFinalFight;
						doTransition = true;
						//audio_play_sound(sMusic, 3, true);
						test = 1;
						scrRyureset();
					}
				break;
				
				case 2: //Continue
					with(oGame){
						if(file_exists("savedfile.sav")){
							//show_debug_message("Yes you got it");
							//show_debug_message("what layer:"+string(layer) );
							var wrapper = LoadJSONFromFile("savedfile.sav");
							var list = wrapper[? "ROOT"];
							
							#region //Load system & character info
							var map = list[| 0];
							var obj = map[? "obj"];
							/*if we don't have this object(oRyuController),then create one
							because the first time open game, r_Title room doesn't create oRyuController
							but if you play in other room and back to menu, the system create that in other room
							need this "if" to stop create oRyuController more than two times*/ 
							if( layer != -1 ){
								instance_create_layer(0, 0, layer , asset_get_index(obj));
							}
							//default variable
							oRyuController.deathCount = 0;
							oRyuController.abilityTP = false;
							oRyuController.abilityDJump = false;
							oRyuController.BlueGemsGet = false;
							oRyuController.HeartGemsGet = false;
							oRyuController.YellowGemsGet = false;
							oRyuController.GreenGemsGet = false;
							oRyuController.RedGemsGet = false;
							RoomContinue = 1; 
							//if the variable exits in save file
							if( map[? "oRyuAbilityTP"] != undefined)	{oRyuController.abilityTP = map[? "oRyuAbilityTP"];}
							if( map[? "deathCount"] != undefined)		{oRyuController.deathCount = map[? "deathCount"];}
							if( map[? "oRyuAbilityDJump"] != undefined)	{oRyuController.abilityDJump = map[? "oRyuAbilityDJump"];}
							if( map[? "BlueGem"] != undefined)			{oRyuController.BlueGemsGet = map[? "BlueGem"];}
							if( map[? "HeartGem"] != undefined)			{oRyuController.HeartGemsGet = map[? "HeartGem"];}
							if( map[? "RedGem"] != undefined)			{oRyuController.YellowGemsGet = map[? "RedGem"];}
							if( map[? "YellowGem"] != undefined)		{oRyuController.GreenGemsGet = map[? "YellowGem"];}
							if( map[? "GreenGem"] != undefined)			{oRyuController.RedGemsGet = map[? "GreenGem"];}
							if( map[? "oRyuX"] != undefined)			{ContinueX = map[? "oRyuX"];}
							if( map[? "oRyuY"] != undefined)			{ContinueY = map[? "oRyuY"];}
							if( map[? "room"] != undefined)				{RoomContinue = map[? "room"]; }
						
									
							#endregion
							
							#region //Load other info
							for(var i = 1; i < ds_list_size(list); i++){
								var map = list[| i];
								var obj = map[? "obj"];
								with(instance_create_layer(0, 0, layer , asset_get_index(obj))){ //Bug? maybe 
									
								}
							}
							#endregion
							
							ds_map_destroy(wrapper);
							
							targetRoom = int64(RoomContinue);
							audio_play_sound(sMusic, 3, true);
							test = 2;
							doTransition = true;
							SartWithContinue = true;
						}else{
							//show_debug_message("NOOOOOOOOOOOOOOOOOOOOOOO no save file");
							SartWithContinue = false;
							targetRoom = r0_0;
							doTransition = true;
							audio_play_sound(sMusic, 3, true);
							test = 1;
							scrRyureset();
						}
					}
				break;
	
				case 1: //Options
					screen = menu_screen.options;
				break;
	
				case 0: //Quit
					scrSaveSystem();
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
					cursor_options = 3;
					scrSaveSystem();
				break;
			}
		}
		
		switch(cursor_options){
			case 1: //Language
				if(leftMenu){
					audio_play_sound(sdMenu, 2, false);
					cursor_Language -=1
					if(cursor_Language < 0) cursor_Language = Language_Count - 1;
				}else if (rightMenu){
					audio_play_sound(sdMenu, 2, false);
					cursor_Language +=1
					if(cursor_Language > Language_Count - 1) cursor_Language = 0;
				}
				if(cursor_Language == 0){
					oGame.languageIndex = 0;
				}else if(cursor_Language == 1){
					oGame.languageIndex = 1;
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

//show_debug_message(oGame.languageIndex);





