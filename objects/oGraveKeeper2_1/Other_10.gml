//---You can update variables here!---//
reset_dialogue_defaults();

switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[0 , i]	= "It seems you got some trouble right?.";
		myText[1 , i]	= "看來你遇到了點困難對吧.";
		mySpeaker[i]	= id;
		//Line 1
		i++;
		myText[0 , i]	="Why you are here!";
		myText[1 , i]	="你怎麼會出現在這裡!";
		mySpeaker[i]	= oRyu;
		
		//Line 2
		i++;
		myText[0 , i]	="That's not a point, look at this scroll now.";
		myText[1 , i]	="先不管我為什麼在這裡,你看看這個卷軸. ";
		mySpeaker[i]	= id;
		myScripts[i]	= [change_variable, oScrollDJ, "image_alpha", "1"];

		//Line 3
		i++;
		myText[0 , i]	="The scroll...?";
		myText[1 , i]	="這個卷軸是...?";
		mySpeaker[i]	= oRyu;

		//Line 4
		i++;
		myText[0 , i]	="Can help you up there";
		myText[1 , i]	="可以幫助你上去的東西";
		mySpeaker[i]	= id;
		
		//line 5
		i++
		myText[0 , i]	= "為什麼你會幫助我們這些寶藏獵人呢?";
		myText[1 , i]	= "為什麼你會幫助我們這些寶藏獵人呢?";
		mySpeaker[i]	= oRyu;
		
		//line 6
		i++;
		myText[0 , i]	= "You will understand when you go depper. See you.";
		myText[1 , i]	= "我想等到你走到深處就會知道了,再見.";
		mySpeaker[i]	= id;
		myScripts[i]	= [change_variable, id, "image_alpha",0.01];
		
		//line 7
		i++;
		myText[0 , i]	= "Hey! wait!";
		myText[1 , i]	= "欸! 等等";
		mySpeaker[i]	= oRyu;
		myScripts[i]	= [change_variable, id, "image_alpha",0];
		#endregion
	break;
}
