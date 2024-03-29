/// @description 

if instance_exists(oRyu){
	//oRyu start moving
	if(startRoom == 0){
		startRoom=1 //start or not
		startPosition_X = oRyu.x; //set default x
		startPosition_Y = oRyu.y; //set default x
	}
	//get camera x
	var CameraX = camera_get_view_x(view_camera[0]);
	//get camera y
	var CameraY = camera_get_view_y(view_camera[0]);
	//move camera Right (choice camera ,set x ,set y)
	if( (CameraX < room_width - width) && (oRyu.x != startPosition_X) && CameraRightSpeed!=0){
		camera_set_view_pos(view_camera[0], CameraX + CameraRightSpeed, 0);
	}
	//move camera Up (choice camera ,set x ,set y)
	if( (CameraY > 0) && (oRyu.x != startPosition_X) && CameraUpSpeed!=0){
		camera_set_view_pos(view_camera[0], 0 , CameraY - CameraUpSpeed);
	}
	
	
	//reset the camera (if the deathCount plus)
	if(deathflag != oRyuController.deathCount){
		camera_set_view_pos(view_camera[0], startCameraX, startCameraY);
		deathflag = oRyuController.deathCount;
	}
	
}else{
	camera_set_view_pos(view_camera[0], startCameraX, startCameraY);
}