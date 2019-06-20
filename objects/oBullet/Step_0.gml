/// @description 
x += xSpeed;

if(x >= room_width){
	alarm[0] = 1;
}

if(place_meeting(x, y, oBoss)){
	alarm[0] = 1;
	instance_create(x, y, oShipHitBoss);
}