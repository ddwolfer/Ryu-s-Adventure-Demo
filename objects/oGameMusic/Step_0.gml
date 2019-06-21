if(room_get_name(room) == "r0_0" && !played1){
	audio_play_sound(sWind, 100, true);
	played1 = true;
}

if(room_get_name(room)=="r0_1" && !played2){
	audio_stop_sound(sWind);
	audio_play_sound(sMusic, 100, true);
	played2 = true;
}

if(room_get_name(room)=="r3_7_1"){
	audio_stop_sound(sMusic);
}

if(room_get_name(room)=="r3_UP" && !played3){
	audio_stop_sound(sMusic);
	audio_play_sound(sUpIntro, 100, false);
	played3 = true;
}

if(room_get_name(room)=="r3_UP" && !played4){
	if(!audio_is_playing(sUpIntro)){
		audio_play_sound(sUpLoop, 100, true);
		played4 = true;
	}
}

if(room_get_name(room)=="rFinalFight" && !played5){
	audio_stop_sound(sUpLoop);
	audio_play_sound(sFinalIntro, 100, false);
	played5 = true;
}

if(room_get_name(room)=="rFinalFight" && !played6){
	if(!audio_is_playing(sFinalIntro)){
		audio_play_sound(sFinalLoop, 100, true);
		played6 = true;
	}
}


if(room_get_name(room)=="rTitle"){
	played1 = false;
	played2 = false;
	played3 = false;
	played4 = false;
	played5 = false;
	played6 = false;
}
