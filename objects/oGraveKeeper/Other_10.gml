//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Test line 1";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Pretty cool, right? Test line 2";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Hi, Ryu.";
		myEffects[i]	= [5,1, 8,0];
		mySpeaker[i]	= id;

		//Line 3
		i++;
		myText[i]		= "1 + 1 =?";
		mySpeaker[i]	= id;

		//Line 4
		i++;
		myText[i]		= ["10", "2"];
		myTypes[i]		= 1;
		myNextLine[i]	= [5,6];
		myScripts[i]	= [[change_variable, id, "choice_variable", "1"], [change_variable, id, "choice_variable", "2"]];
		mySpeaker[i]	= oRyu;

		//Line 5
		i++;
		myText[i]		= "Stupid";
		myNextLine[i]	= -1;
		mySpeaker[i]	= id;

		//Line 6
		i++;
		myText[i]		= "Yes";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "1":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "You are stupid";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "2":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "Smart guy luuuuul";
		mySpeaker[i]	= id;
		myEffects[i]	= [1,2];

		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}
