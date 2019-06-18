y += floatSpeed * dir
if(y >= bottom || y <= top) dir *= -1;

if(place_meeting(x, y, oRyu)) instance_destroy(self);