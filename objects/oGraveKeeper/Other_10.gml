//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[0 , i]	= "A human! What brings you up here?";
		myText[1 , i]	= "人類! 什麼風把你吹來這?";
		mySpeaker[i]	= id;
		//Line 1
		i++;
		myText[0 , i]	= "A human?! I thought there's no living things here?";
		myText[1 , i]	="你是人類? 我還以為這裡沒有活著的人了";
		mySpeaker[i]	= oRyu;
		
		//Line 2
		i++;
		myText[0 , i]	= "There is. And I'm here to guide you.";
		myText[1 , i]	="是的. 我是來這引導你的. ";
		mySpeaker[i]	= id;

		//Line 3
		i++;
		myText[0 , i]	= "Who are you?";
		myText[1 , i]	="你是誰 ?";
		mySpeaker[i]	= oRyu;

		//Line 4
		i++;
		myText[0 , i]	= "Doesn't matter, what's important is, why are you here?";
		myText[1 , i]	="這不重要, 重點是為何你會在此?";
		mySpeaker[i]	= id;

		//Line 5
		i++;
		myText[0 , i]	= ["Mind your own business.", "I'm here to finish my father's job."];
		myText[1 , i]	= ["這不關你的事, 管好你自己.", "我來這裡完成我父親的工作."];
		myNextLine[i]	= [9,6];
		myTypes[i]   = 1;
		myScripts[i]	= [[change_variable, id, "choice_variable", "1"], [change_variable, id, "choice_variable", "2"]];
		mySpeaker[i]	= oRyu;
		
		//line 6
		i++;
		myText[0 , i]	= "Really? Does you father know you're here?";
		myText[1 , i]	= "真的嗎? 你父親知道你來這嗎?";
		mySpeaker[i]	= id;
		
		//line 7
		i++
		myText[0 , i]	= "He died on this asteroid...";
		myText[1 , i]	= "他死在這個小行星上...";
		mySpeaker[i]	= oRyu;
		
		//line 8
		i++;
		myText[0 , i]	= "He'll be proud of you.";
		myText[1 , i]	= "他會以你為榮的.";
		mySpeaker[i]	= id;
		
		//line 9
		i++;
		myText[0 , i]	= "The entrance is right in front of you, go ahead.";
		myText[1 , i]	= "入口就在右邊, 前進吧.";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case 1:
		var i = 0;
		myText[0 , i]	= "Hey you are the one telling me to mind my own business.";
		myText[1 , i]	= "嘿，你是那個告訴我要管好自己的人。";
		mySpeaker[i]	= id;

	break;
	
	case 2:
		var i = 0;
		myText[0 , i]	= "The entrance is right in front of you, go ahead.";
		myText[1 , i]	= "入口就在右邊, 前進吧.";
		mySpeaker[i]	= id;
		
	break;
}
