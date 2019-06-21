//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[0 , i]	= "You again old dude, what are you gonna give me this time?";
		myText[1 , i]	= "又見面了老頭,你又要送我什麼了嗎.";
		mySpeaker[i]	= oRyu;
		
		//Line 12
		i++
		myText[0 , i]	="Time to go back and guide other treasure hunters.";
		myText[1 , i]	="那麼再上去引導其它的寶藏獵人吧";
		mySpeaker[i]	= id;
		myScripts[i]	= [change_variable, oFinalBoss, "CreateDialougeByTrigger", "false"]; //goto end
		#endregion
	break;
}
