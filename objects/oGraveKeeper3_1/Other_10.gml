//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[0 , i]	= "Greeting, seems you pass the test.";
		myText[1 , i]	= "又見面了,看來你順利地通過前面的考驗了呢.";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[0 , i]	="Why you are here again?";
		myText[1 , i]	="你怎麼又在這裡?";
		mySpeaker[i]	= oRyu;
		
		//Line 2
		i++;
		myText[0 , i]	= "By the way, did you see anything looks like gem?";
		myText[1 , i]	="對了,你來的路上有看到寶石之類的東西嗎?";
		mySpeaker[i]	= id;

		//Line 3
		i++;
		myText[0 , i]	= ["Yes", "No"];
		myText[1 , i]	= ["有", "沒有"];
		myNextLine[i]	= [4,5];
		myTypes[i]   = 1;
		myScripts[i]	= [[change_variable, id, "choice_variable", 1], [change_variable, id, "choice_variable",2]];
		mySpeaker[i]	= oRyu;
		
		//Line 4
		i++;
		myText[0 , i]	="I suggest that you stop picking up that thing, it may bring you curse.";
		myText[1 , i]	="那我建議你不要再撿了,他可能會為你帶來詛咒.";
		myNextLine[i]	= 6;
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[0 , i]	="That's good.";
		myText[1 , i]	="那很好.";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[0 , i]	="And you need my help again.";
		myText[1 , i]	="那麼接下來你又會需要我的幫助了";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[0 , i]	="you gonna give me something like the scroll?";
		myText[1 , i]	="你又要給我什麼東西了嗎?";
		mySpeaker[i]	= oRyu;
		myScripts[i]	= [change_variable, oScrollTP, "image_alpha", 1];
		
		//Line 8
		i++;
		myText[0 , i]	="Yes. Take this scroll, it will be helpfull for your adventure. See you.";
		myText[1 , i]	="收下這個卷軸吧,對接下來的考驗有幫助的,再見.";
		myScripts[i]	= [change_variable, id, "image_alpha",0.01];
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[0 , i]	="(where is this old man come from...?)";
		myText[1 , i]	="(這個老頭到底是什麼人......)";
		myScripts[i]	= [change_variable, id, "image_alpha",0];
		mySpeaker[i]	= oRyu;
		
		#endregion
	break;
}
