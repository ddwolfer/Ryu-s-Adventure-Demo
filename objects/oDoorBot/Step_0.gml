/// @description Insert description here
// You can write your code in this editor

var moveDoor = 0.4;
if(place_meeting(x-12,y,oRyu)){
	switch(image_index){
	case 0: //Blue
		if(oRyuController.BlueGemsGet == true){
			addScreenShake(6, 10);
			y += moveDoor;
		}
	break;
	case 1: //Heart
		if(oRyuController.HeartGemsGet == true){
			addScreenShake(6, 10);
			y += moveDoor;
		}
	break;
	case 2: //Green
		if(oRyuController.GreenGemsGet == true){
			addScreenShake(6, 10);
			y += moveDoor;
		}
	break;
	case 3: //Red
		if(oRyuController.RedGemsGet == true){
			addScreenShake(6, 10);
			y += moveDoor;
		}
	break;
	case 4: //Yellow
		if(oRyuController.YellowGemsGet == true){
			addScreenShake(6, 10);
			y += moveDoor;
		}	
	break;
	}

}