/// @description Insert description here
// You can write your code in this editor

getInput();

#region //open close

	if(select){
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
		case 2: //Language
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
		case 3: //SFX
			if(leftMenu){
				audio_play_sound(sdMenu, 2, false);
				scrChangeSoundVolume(-0.1);
			}else if (rightMenu){
				audio_play_sound(sdMenu, 2, false);
				scrChangeSoundVolume(0.1);
			}
		break;
		case 4: //Music
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
