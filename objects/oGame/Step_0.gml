getInput();
/// timer
/*else if(room != rCredit){
	if(timerSecond <= 60 && timerSecond >= 59.9){
		timerSecond = 0;
		timerMinute++;
	}
}*/

///check controller or kb
for(var i = 0; i < 12; i++){
	gpConnected = gamepad_is_connected(i);
	if(gpConnected == true) break;
}


//show_debug_message(oGame.languageIndex);

