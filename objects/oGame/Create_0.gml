///@desc for transition and stuff and a timer

width = display_get_gui_width();
height = display_get_gui_height();

transitionAlpha = 0;

doTransition = false;
targetRoom = noone;

deathFade = false;

timerSecond = 0;
timerMinute = 0;
//alarm[10] = 1;

globalvar SartWithContinue,ContinueX,ContinueY,RoomContinue;
SartWithContinue = false;
ContinueX = 0 ;
ContinueY = 0 ;
RoomContinue = 0;
gpConnected = false;

//language index
languageIndex = 0;

f = font_add("EquipmentPro.ttf", 20, false, false, 32, 128);

audio_group_load(soundEffect);