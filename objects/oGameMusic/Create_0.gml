/// @description 
//我直接在oTitleMenu選Start跟continue的時候放音樂
//這邊就先不用了 byDwolf
if(room_get_name(room)!="rTitle"){
	audio_play_sound(sMusic, 3, true);
}
