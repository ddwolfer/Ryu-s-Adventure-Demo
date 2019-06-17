/// @description Insert description here
// You can write your code in this editor

var controller = oGame.gpConnected;

if(place_meeting(x, y, oRyu) && !created){
	if(controller){
		instance_create(x, y - 24, oToolTipXbox);
		created = true;
	}else if(!controller){
		instance_create(x, y - 24, oToolTipPC);
		created = true;
	}
}
if(!place_meeting(x, y, oRyu) && created){
	if(instance_exists(oToolTipXbox)){
		instance_destroy(oToolTipXbox);
		created = false;
	}else if(instance_exists(oToolTipPC)){
		instance_destroy(oToolTipPC);
		created = false;
	}
}