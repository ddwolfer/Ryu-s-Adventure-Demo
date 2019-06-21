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
		
		//Line 1
		i++;
		myText[0 , i]	="No, nothing.";
		myText[1 , i]	="不,我已經沒有什麼可以送了.";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[0 , i]	="You pass the tests, now it's time for MY mission";
		myText[1 , i]	="你已經通過重重考驗來到了最後,是時候進行我的任務了";
		mySpeaker[i]	= id;
				
		//Line 3
		i++;
		myText[0 , i]	= "Finally the treasure!";
		myText[1 , i]	= "你要給我傳說中的寶藏了嗎!";
		mySpeaker[i]	= oRyu;
		
		//Line 4
		i++
		myText[0 , i]	="I'll be honest, there's no treasure, everything is fake.";
		myText[1 , i]	="老實說吧,這裡並沒有什麼寶藏,放出的消息也都是假的.";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[0 , i]	= "What the...? So the poeple came here...?";
		myText[1 , i]	= "什麼! 那麼來到這邊的人們...?";
		mySpeaker[i]	= oRyu;
		
		//Line 6
		i++
		myText[0 , i]	="Their souls are this asteroids food.";
		myText[1 , i]	="他們的靈魂都成為了這個星球的糧食.";
		mySpeaker[i]	= id;
		
		//Line 7
		i++
		myText[0 , i]	="This is no ordinary asteroid, it needs souls to be able to live";
		myText[1 , i]	="這是個特殊的星球,他的需要定時的獻祭才能運轉下去.";
		mySpeaker[i]	= id;
		
		//Line 8
		i++
		myText[0 , i]	="Now you've proofed to be a strong soul.";
		myText[1 , i]	="現在你證明了你也擁有優質的靈魂.";
		mySpeaker[i]	= id;
		
		//Line 9
		i++
		myText[0 , i]	="Just like you father.";
		myText[1 , i]	="就如同你的父親.";
		mySpeaker[i]	= id;
		
		//Line 10
		i++;
		myText[0 , i]	= "WHAT? So my dad....?";
		myText[1 , i]	= "什...麼...!!! 我的父親也是在這裡被...!!!";
		mySpeaker[i]	= oRyu;
		
		//Line 11
		i++
		myText[0 , i]	="Your time has come, the core is hungry.";
		myText[1 , i]	="差不多該送你上路了,剛好底下的核心也餓了.";
		mySpeaker[i]	= id;
		
		//Line 12
		i++
		myText[0 , i]	="Rest in peace, Ryu";
		myText[1 , i]	="安息吧,Ryu.";
		mySpeaker[i]	= id;
		myScripts[i]	= [change_variable, id, "RyuDie", "true"]; //Ryu die
		
		//Line 13
		i++;
		myText[0 , i]	= "A.....Ashley......Sorry";
		myText[1 , i]	= "Ashley......我......對不起";
		mySpeaker[i]	= oRyu;
		
		//Line 12
		i++
		myText[0 , i]	="Time to go back and guide other treasure hunters.";
		myText[1 , i]	="那麼再上去引導其它的寶藏獵人吧";
		mySpeaker[i]	= id;
		myScripts[i]	= [change_variable, oGraveKeeper3_7, "CreateDialougeByTrigger", "false"]; //goto end
		#endregion
	break;
}
