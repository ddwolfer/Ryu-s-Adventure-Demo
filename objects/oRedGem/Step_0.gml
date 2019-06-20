/// @description Insert description here
// You can write your code in this editor
y += floatSpeed * dir
if(y >= bottom || y <= top) dir *= -1;

if(getGems){
	image_alpha = 1;
}

if(place_meeting(x, y, oRyu) && getGems){
	oRyuController.RedGemsGet = true;
	audio_play_sound(sdCollect, 3, false);
	image_alpha = 0;
	instance_destroy(self);
} 