/// @description 
y += floatSpeed * dir
if(y >= bottom || y <= top) dir *= -1;

if(getScroll){
	image_alpha = 1;
}

if(place_meeting(x, y, oRyu) && getScroll){
	oRyuController.abilityTP = true;
	audio_play_sound(sdCollect, 3, false);
	instance_destroy();
}
