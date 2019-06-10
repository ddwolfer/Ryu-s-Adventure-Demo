//---You can update variables here!---//
reset_dialogue_defaults();

switch(choice_variable){
	case -1:
		//Line 0
		var i = 0;
		myText[i]		= "You sure you want to go? It's dangerous up there.";
		myEffects[i]	= [26,1];
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "I have to, I can't miss this oppurtunity.";
		mySpeaker[i]	= oRyu;
		
		//Line 2
		i++;
		myText[i]		= "......";
		mySpeaker[i]	= id;

		//Line 3
		i++;
		myText[i]		= "Don't worry I'll be back soon.";
		mySpeaker[i]	= oRyu;

		//Line 4
		i++;
		myText[i]		= ".......";
		mySpeaker[i]	= id;
		choice_variable	= 1;
	break;
	
	case "1":
	#region 
		var i = 0;
		//Line 0
		myText[i]		= "......";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
}


