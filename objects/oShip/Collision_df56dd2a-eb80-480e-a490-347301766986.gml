/// @description 
if(!damaged){
	audio_play_sound(sdShipHit, 3, false);
	addScreenShake(10, 30);
	oShipSpawner.shipHealth -= 1;
	damaged = true;
	alarm[0] = game_get_speed(gamespeed_fps);
}