/// @description 
y += floatSpeed * dir
if(y >= bottom || y <= top) dir *= -1;

if(image_alpha > 0.5){
	getScroll = true;
}

if(place_meeting(x, y, oRyu) && getScroll){
	oRyuController.abilityDJump = true;
	audio_play_sound(sdCollect, 3, false);
	instance_destroy();
}