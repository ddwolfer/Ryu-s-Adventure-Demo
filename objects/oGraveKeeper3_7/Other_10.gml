//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[0 , i]	= "DIE BITCH.";
		myText[1 , i]	= "死吧婊子.";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[0 , i]	="WTF?";
		myText[1 , i]	="工三小?";
		mySpeaker[i]	= oRyu;
		myScripts[i]	= [change_variable, id, "RyuDie", "true"];
		
		//Line 2
		i++
		myText[0 , i]	="BYEEEEEEEEE";
		myText[1 , i]	="888888888888?";
		mySpeaker[i]	= id;
		
		myScripts[i]	= [change_variable, oGraveKeeper3_7, "CreateDialougeByTrigger", "false"];
		
		#endregion
	break;
}
