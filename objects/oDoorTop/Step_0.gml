/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var moveDoor = 0.4;
var lagtime = 40;
if(place_meeting(x-12,y+48,oRyu)){
	switch(image_index){
		case 0: //Blue
			if(oRyuController.BlueGemsGet == true){
				alarm[0] = lagtime;
				image_index = 5;
			}
		break;
		case 1: //Heart
			if(oRyuController.HeartGemsGet == true){
				alarm[1] = lagtime;
				image_index = 6;
			}
		break;
		case 2: //Green
			if(oRyuController.GreenGemsGet == true){
				alarm[2] = lagtime;
				image_index = 7;
			}
		break;
		case 3: //Red
			if(oRyuController.RedGemsGet == true){
				alarm[3] = lagtime;
				image_index = 8;
			}
		break;
		case 4: //Yellow
			if(oRyuController.YellowGemsGet == true){
				alarm[4] = lagtime;
				image_index = 9;
			}	
		break;
		case 5: //Blue
			if(oRyuController.BlueGemsGet == true && BlueOpen){
				y -= moveDoor;
			}
		break;
		case 6: //Heart
			if(oRyuController.HeartGemsGet == true && HeartOpen){
				y -= moveDoor;
			}
		break;
		case 7: //Green
			if(oRyuController.GreenGemsGet == true && GreenOpen){
				y -= moveDoor;
			}
		break;
		case 8: //Red
			if(oRyuController.RedGemsGet == true && RedOpen){
				y -= moveDoor;
			}
		break;
		case 9: //Yellow
			if(oRyuController.YellowGemsGet == true && YellowOpen){
				y -= moveDoor;
			}	
		break;
	}
}