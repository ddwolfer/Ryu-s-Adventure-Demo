/// @description Insert description here
// You can write your code in this editor

getInput();

#region //open close

	if(select && room!=rTitle){
		if(drawGrayBackround == false){ //open menu
			drawGrayBackround =true;
			oRyu.control = false;
		}else if(drawGrayBackround == true){ //close menu
			drawGrayBackround =false;
			oRyu.control = true;
		}		
	}

#endregion

if(drawGrayBackround == true){
	#region //option controll
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
			case 2: //SAVE
				#region //save code
					ContinueX = oRyu.x;
					ContinueY = oRyu.y;
					RoomContinue = room;
					//create root list
					var rootList = ds_list_create();

					//for every instance, create a map
					with(oParentSaveMe){
						var map = ds_map_create();
						ds_list_add(rootList, map);
						ds_list_mark_as_map(rootList, ds_list_size(rootList) - 1);
		
						var obj = object_get_name(object_index);
						ds_map_add(map,"obj", obj);
						ds_map_add(map,"deathCount", oRyuController.deathCount);
						ds_map_add(map,"room", room);
						ds_map_add(map,"oRyuX",oRyu.x);
						ds_map_add(map,"oRyuY",oRyu.y);
						show_debug_message(string( room_get_name(room) ));
						show_debug_message("x :"+string(oRyu.x) + "and Y : "+string(oRyu.y));
					}

					//wrap the root list up in a map
					var wrapper = ds_map_create();
					ds_map_add_list(wrapper, "ROOT", rootList);

					//save all of this to a string
					var str = json_encode(wrapper);
					SaveStringToFile("savedfile.sav", str);

					//Nuke the data
					ds_map_destroy(wrapper);

					show_debug_message("Saved");
				#endregion
			break;
			case 1://Back To Menu
				room_goto(rTitle);
				drawGrayBackround =false;
			break;
			case 0: //RESUME
				drawGrayBackround =false;
				oRyu.control = true;
			break;
		}
	}
	#endregion
	
	#region options contains
	switch(cursor_options){
		case 3: //Language
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
		case 4: //SFX
			if(leftMenu){
				audio_play_sound(sdMenu, 2, false);
				scrChangeSoundVolume(-0.1);
			}else if (rightMenu){
				audio_play_sound(sdMenu, 2, false);
				scrChangeSoundVolume(0.1);
			}
		break;
		case 5: //Music
			if(leftMenu){
				audio_play_sound(sdMenu, 2, false);
				scrChangeMusicVolume(-0.1);
			}else if (rightMenu){
				audio_play_sound(sdMenu, 2, false);
				scrChangeMusicVolume(0.1);
			}
		break;
	}
	#endregion
	

}
