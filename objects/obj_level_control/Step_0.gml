/// @description Level Control


#region //Level Checks

//start level
if (LEVEL_START == false) && (LEVEL_RUNNING == false) {
	if (keyboard_check_pressed(vk_space)) {
		LEVEL_START = true;
		LEVEL_RUNNING = true;
		LEVEL_OVER = false;
	}
}

//end level
if (LEVEL_START == true) && (LEVEL_RUNNING == true) {
	if (keyboard_check_pressed(vk_shift)) {
		LEVEL_RUNNING = false;
		LEVEL_OVER = true;
	}
}

if (LEVEL_OVER == true) {
	if (keyboard_check(vk_space)) {
		room_restart();
	}
}


//pause allowed
if (LEVEL_RUNNING == true) {
	CAN_PAUSE = true;
} else {
	CAN_PAUSE = false;
}


#endregion