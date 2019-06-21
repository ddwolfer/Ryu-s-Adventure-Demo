//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[0 , i]	= "Don't you dare run away from me";
		myText[1 , i]	= "小 鬼 ,休想從我手裡逃走.";
		myEffects[i]	=1;
		mySpeaker[i]	= id;
		
		//Line 1
		i++
		myText[0 , i]	="You will be my food, surrender now!";
		myText[1 , i]	="今天我也要讓你成為我的養分!!! 覺悟吧.";
		mySpeaker[i]	= id;
		
		//Line 1
		i++
		myText[0 , i]	="Come and get me if you can.";
		myText[1 , i]	="我才不會乖乖的給你吃掉,";
		mySpeaker[i]	= oRyu;
		myScripts[i]	= [change_variable, oFinalBoss, "CreateDialougeByTrigger", "false"]; //goto end
		#endregion
	break;
}
