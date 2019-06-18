//-----------Customise (FOR USER)
playerobject = oRyu;
interact_key = vk_up;
detection_radius = 32;

myVoice			= -1;
myPortrait		= -1;
if(oGame.languageIndex == 0){
	myFont		= font_add("ChineseDialogue.ttf", 17, false, false, 32, 128);
}else{
	myFont		= font_add("ChineseDialogue.ttf", 17, false, false, 32, 128);
}

myName			= "None";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;
myPortraitIdle_x	= -1;
myPortraitIdle_y	= -1;

//-----------Defaults Setup (LEAVE THIS STUFF)
reset_dialogue_defaults();

//Tool tip
created = false;
deletedNPC = false;
deletedNPCFlag = false;