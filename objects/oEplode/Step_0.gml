/// @description Insert description here
// You can write your code in this editor
var CameraY = camera_get_view_y(view_camera[0]);

if(oAutoRightCamera.startRoom && (oRyu.x != oAutoRightCamera.startPosition_X) && !activeFlag){
	alarm[0] = 50 ;
	activeFlag = true;
}
//move camera Up (choice camera ,set x ,set y)
if( (oRyu.x != oAutoRightCamera.startPosition_X)){
	with(oEplode){
		y = CameraY + 240 - random_range(0,24);
		
	}
}
//reset the camera (if the deathCount plus)
if(deathflag != oRyuController.deathCount){
	with(oEplode){
		y = defaultY;
	}
	image_alpha = 0 ;
	activeFlag = false;
	deathflag = oRyuController.deathCount;
}