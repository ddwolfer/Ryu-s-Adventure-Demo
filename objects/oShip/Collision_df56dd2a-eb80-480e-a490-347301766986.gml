/// @description 
if(!damaged){
	addScreenShake(10, 30);
	oShipSpawner.shipHealth -= 1;
	damaged = true;
	alarm[0] = game_get_speed(gamespeed_fps);
}