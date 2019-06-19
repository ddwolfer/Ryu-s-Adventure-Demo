x -= 2;

if(place_meeting(x, y, oShip) || x <= 0){
	instance_destroy(self);
}
