/// @description Splash Screen


//show made in
if (made_in_alarm > 0) {
	made_in_alarm -= 1;
	if (made_in_alarm <= 0) {
		made_in_shown = true;
	}
}


//show made by
if (made_by_alarm > 0) && (made_in_shown == true) {
	made_by_alarm -= 1;
	if (made_by_alarm <= 0) {
		made_by_shown = true;
	}
}


//go to main room only once audio groups have been loaded (option)
if (made_by_shown) && (MUSIC_LOADED) && (SOUND_LOADED) {
	room_goto(rm_main_menu)
}