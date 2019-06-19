/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var moveDoor = 0.4;
if(place_meeting(x-12,y+48,oRyu)){
	switch(image_index){
	case 0: //Blue
		if(oRyuController.BlueGemsGet == true){
			y -= moveDoor;
		}
	break;
	case 1: //Heart
		if(oRyuController.HeartGemsGet == true){
			y -= moveDoor;
		}
	break;
	case 2: //Green
		if(oRyuController.GreenGemsGet == true){
			y -= moveDoor;
		}
	break;
	case 3: //Red
		if(oRyuController.RedGemsGet == true){
			y -= moveDoor;
		}
	break;
	case 4: //Yellow
		if(oRyuController.YellowGemsGet == true){
			y -= moveDoor;
		}	
	break;
	}
}