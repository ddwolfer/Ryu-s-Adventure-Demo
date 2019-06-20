/// @description 
y += floatSpeed * dir
if(y >= bottom || y <= top) dir *= -1;

if(image_alpha > 0.5){
	getScroll = true;
}else{
	getScroll = false;
}

if(place_meeting(x, y, oRyu) && image_alpha){
	oRyuController.abilityDJump = true;
	audio_play_sound(sdCollect, 3, false);
	instance_destroy();
}