//---You can update variables here!---//
reset_dialogue_defaults();

switch(choice_variable){
	case -1:
		//Line 0
		var i = 0;
		myText[0,i]		= "You must get to the CORE...underground...take this...";
		myText[1,i]		= "你必須到核心...在地底...這個...";
		myEffects[i]	= [1,1];
		mySpeaker[i]	= id;
		myScripts[i]	= [change_variable, oRedGem, "getGems", "true"];
}

