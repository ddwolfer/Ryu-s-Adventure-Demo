/// @description 
if(CanMove == true){
	
	if(SplikeMove==true && SpikeOn == true){
		//show_debug_message("turn on spike now!");
		y -= 8;
		SplikeMove=false;
		
	}else if(SplikeMove==true && SpikeOn == false){
		//show_debug_message("trun off spike now!");
		y += 8;
		SplikeMove=false;
	}
}

