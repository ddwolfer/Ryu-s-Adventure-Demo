if(touchedRyu() && !touched ){
	audio_play_sound(sdSwitch, 2, false);
	touched = true;
	oSwitchBlockB.state *= -1;
	oSwitchBlockR.state *= -1;
	oSwitch.state *= -1;
}

if(!touchedRyu()){
	touched = false;
}

if(state == 1) image_index = 0;
else if(state == -1) image_index = 1;


