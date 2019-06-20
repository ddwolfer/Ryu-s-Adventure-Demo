//---You can update variables here!---//
reset_dialogue_defaults();

switch(choice_variable){
	case -1:
		//Line 0
		var i = 0;
		myText[0,i]		= ".......";
		myText[1,i]		= ".......";
		myEffects[i]	= [1,1];
		mySpeaker[i]	= id;
		myScripts[i]	= [change_variable, oRedGem, "getGems", "true"];
}

