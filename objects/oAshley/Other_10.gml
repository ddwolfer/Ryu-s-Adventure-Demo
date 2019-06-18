//---You can update variables here!---//
reset_dialogue_defaults();

switch(choice_variable){
	case -1:
		//Line 0
		var i = 0;
		myText[0,i]		= "You sure you want to go? It's dangerous up there.";
		myText[1,i]		= "你確定你要去嗎? 那邊很危險的.";
		myEffects[i]	= [26,1];
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[0,i]		= "I have to, I can't miss this oppurtunity.";
		myText[1,i]		= "我必須去, 我不能白白浪費這個機會.";
		mySpeaker[i]	= oRyu;
		
		//Line 2
		i++;
		myText[0,i]		= "......";
		myText[1,i]		= "......";
		mySpeaker[i]	= id;

		//Line 3
		i++;
		myText[0,i]		= "Don't worry I'll be back soon.";
		myText[1,i]		= "別擔心,我很快就會回來了";
		mySpeaker[i]	= oRyu;

		//Line 4
		i++;
		myText[0,i]		= "......";
		myText[1,i]		= "......";
		mySpeaker[i]	= id;
		choice_variable	= 1;
	break;
	
	case 1:
	#region 
		var i = 0;
		//Line 0
		myText[0,i]		= "......";
		myText[1,i]		= "......";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
}


