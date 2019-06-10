//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A human! What brings you up here?";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "A human?! I thought there's no living things here?";
		mySpeaker[i]	= oRyu;
		
		//Line 2
		i++;
		myText[i]		= "There is. And I'm here to guide you.";
		mySpeaker[i]	= id;

		//Line 3
		i++;
		myText[i]		= "Who are you?";
		mySpeaker[i]	= oRyu;

		//Line 4
		i++;
		myText[i]		= "Doesn't matter, what's important is, why are you here?";
		mySpeaker[i]	= id;

		//Line 5
		i++;
		myText[i]		= ["Mind your own business.", "I'm here to finish my father's job."];
		myNextLine[i]	= [9,6];
		myTypes[i]   = 1;
		myScripts[i]	= [[change_variable, id, "choice_variable", "1"], [change_variable, id, "choice_variable", "2"]];
		mySpeaker[i]	= oRyu;
		
		//line 6
		i++;
		myText[i]		= "Really? Does you father know you're here?";
		mySpeaker[i]	= id;
		
		//line 7
		i++
		myText[i]		= "He died on this asteroid...";
		mySpeaker[i]	= oRyu;
		
		//line 8
		i++;
		myText[i]		= "He'll be proud of you.";
		mySpeaker[i]	= id;
		
		//line 9
		i++;
		myText[i]		= "The entrance is right in front of you, go ahead.";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case 1:
		var i = 0;
		myText[i]		= "Hey you are the one telling me to mind my own business.";
		mySpeaker[i]	= id;
	break;
	
	case 2:
		var i = 0;
		myText[i]		= "The entrance is right in front of you, go ahead.";
		mySpeaker[i]	= id;
	break;
}
