if(!instance_exists(oRyu)){
	if(instance_exists(oSwitch)){
		oSwitch.state = 1; //change back to initial state
		oSwitchBlockB.state = -1;
		oSwitchBlockR.state = 1;
	}
	if(SartWithContinue == true){
		instance_create_layer(ContinueX, ContinueY, "MainEntities", oRyu);
		SartWithContinue = false;
	}else{
		instance_create_layer(spawnX, spawnY, "MainEntities", oRyu);
	}
	
}
