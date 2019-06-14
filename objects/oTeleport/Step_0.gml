/// @description 

x += mySpeed * dir;
image_angle -= boomerangRotateSpeed;

flyTime += 1; //disappear after some time

if(place_meeting(x, y, oParentSolid) || flyTime >= 80){
	instance_create(x, y, oTeleportEffect);
	instance_destroy();
}



