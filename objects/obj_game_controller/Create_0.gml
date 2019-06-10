/// @description Initialize Game


//set global variables
globalvar PAUSED, CAN_PAUSE;

PAUSED = false;
CAN_PAUSE = false;


//load in saved information
var file = "save.sav";
if (file_exists(file)) {
	ini_open(file);
	//add code here
	ini_close();
}

