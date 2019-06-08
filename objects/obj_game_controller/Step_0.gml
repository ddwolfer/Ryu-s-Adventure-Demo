/// @description Game Manager


#region //P for Pause

if (keyboard_check_pressed(ord("P"))) && (CAN_PAUSE == true) {
	if (PAUSED == true) {
		PAUSED = false;
		instance_destroy(obj_pause_menu);
	} else if (PAUSED == false) {
		PAUSED = true;
		instance_create_layer(x, y, "GUI", obj_pause_menu);
	}
}

#endregion


#region //shortcut keys

if (PAUSED == false) {
	
	//Q for Quit
	if (keyboard_check_pressed(ord("Q"))) {
		game_end();}


	//R for Restart
	if (keyboard_check_pressed(ord("R"))) {
		game_restart();}
	

	//M for Main Menu
	if (keyboard_check_pressed(ord("M"))) {
		room_goto(rm_main_menu);}


	//F for Fullscreen
	if (keyboard_check_pressed(ord("F"))) {
	   if (window_get_fullscreen()) {
	        window_set_fullscreen(false);
		} else {
	      window_set_fullscreen(true);
		}
	}
	
}

#endregion