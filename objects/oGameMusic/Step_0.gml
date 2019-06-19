if(room_get_name(room) == "r0_0" && !played1){
	audio_play_sound(sWind, 3, true);
	played1 = true;
}

if(room_get_name(room)=="r0_1" && !played2){
	audio_stop_sound(sWind);
	audio_play_sound(sMusic, 3, true);
	played2 = true;
}
