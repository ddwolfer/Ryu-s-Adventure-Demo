y += floatSpeed * dir
if(y >= bottom || y <= top) dir *= -1;

if(place_meeting(x, y, oRyu)){
	audio_play_sound(sdCollect, 3, false);
	image_alpha = 0;
} 