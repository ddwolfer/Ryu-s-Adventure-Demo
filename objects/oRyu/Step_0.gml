//get input 
getInput();

var tempAccel, tempFric

//Movement acceleration
if(onGround){
	tempAccel = groundAccel;
	tempFric = groundFric;
	ledgeJumpTimer = ledgeJumpTime; //coyote time 
	canDJump = true;
} else{
	tempAccel = airAccel;
	tempFric = airFric;
	ledgeJumpTimer--;  //coyote time 
}

if(control){
	//Handle gravity
	if(!onGround && state!=climb && stopGravity==false ){
		yVelo = approach(yVelo, yVeloMax, gravityNormal);
	}

	if(!onMovingPlatform){
		if(left && state!=climb){
			facing = 1;
			state = run;
			//Apply acceleration left
			if(xVelo > 0) xVelo = approach(xVelo, 0, tempFric);
			xVelo = approach(xVelo, -xVeloMax, tempAccel);
		}else if(right && state!=climb){
			facing = -1;
			state = run;
			//Apply acceleration right
			if(xVelo < 0) xVelo = approach(xVelo, 0, tempFric);
			xVelo = approach(xVelo, xVeloMax, tempAccel);	
		 }
		//Friction
			if(!right && !left){
				xVelo = approach(xVelo, 0, tempFric);
				state = idle;
			}
	} else if(onGround){  //Moving Platform
		var tempPlatform = instance_place(x, y + 1, oParentJumpThru);
		if(!right && !left) {
			if(tempPlatform != noone){
				xVelo = tempPlatform.SpeedX * tempPlatform.DirX;
				//yVelo = tempPlatform.SpeedY * tempPlatform.DirY;
			}
			state = idle;
		}
		else if(left && state!=climb){
			facing = 1;
			state = run;
			//Apply acceleration left
			if(xVelo > 0) xVelo = approach(xVelo, 0, tempFric);
			xVelo = approach(xVelo, -xVeloMax, tempAccel);
		}else if(right && state!=climb){
			facing = -1;
			state = run;
			//Apply acceleration right
			if(xVelo < 0) xVelo = approach(xVelo, 0, tempFric);
			xVelo = approach(xVelo, xVeloMax, tempAccel);
		 }
		 yVelo = tempPlatform.SpeedY * tempPlatform.DirY; //handle Y speed of the moving platform
	}

	/*//Friction
	if(!right && !left){
		xVelo = approach(xVelo, 0, tempFric);
		state = idle;
	}*/
	
	#region //climb Ladder
	if(jump && holdClimb==true){
		holdClimb = false;
	}
	if(climb){
		if(left || right){
			state = idle;
		}
	}
	if(!place_meeting(x,y,oLadder)){ //stop state climb
		holdClimb = false;
	}
	if(place_meeting(x,y,oLadder)){ 
		if(place_meeting(x,y+1,oParentSolid)){//when Ryu on the ground, stop hold climb
			holdClimb = false;
		}
		if(holdClimb == true){ //if you still on the ladder, hold the state
			state = climb;
		}
		var tempLadder = instance_place(x,y,oLadder); //Let RyuX can in the center of ladder
		if(up){
			state = climb;
			holdClimb = true;
			x = tempLadder.x+8;
			if(!instance_place(x,y-12,oLadder)){ //if Ryu's head over the ladder, let Ryu stand on ladder
				y -= 12;
			}else{
				y -= 0.8;
			}
		}
		else if (down && !place_meeting(x,y+1,oParentSolid)){ //can't down when you on the ground
			state = climb;
			holdClimb = true;
			x = tempLadder.x+8;
			y += 0.8;
		}
	}else if (down && place_meeting(x,y+13,oLadder)){ //if have ladder under the floor
		state = climb;
		y = y+12;
	}
	#endregion
	
	#region//Jump
	if(jump){
		if(onGround || ledgeJumpTimer > 0 ){
			/*if (down) {    /////////fall through platform
	            if (place_meeting(x, y + 1, oParentJumpThru))
	                ++y;
	        } else {*/
				audio_group_set_gain(soundEffect, random_range(0.15, 0.3), 0);
				audio_play_sound(sdJump, 5, false);
	            yVelo = -jumpHeight;
	            yscale = 1.33;
	            xscale = 0.67;
				ledgeJumpTimer = 0;
	        //}
		}
		jumpBufferTimer = jumpBufferTime;
		
	}else if (jumpRelease && state!=climb) { 
	    if (yVelo < 0)
	        yVelo *= 0.25;
	}
	
	if(!onGround && state!=climb ) {
		state = jump;
		if(jump && canDJump && oRyuController.abilityDJump){    //can double jump after collect scroll
			 yVelo = -jumpHeight * (2 / 3);
			 canDJump = false;
			 instance_create(x , y + 12, oJumpEffect);
			 audio_play_sound(sdJump, 2, false);
		}
	}
	#endregion
	//Particles
	else if (random(100) > 85 && abs(xVelo) > 0.5 && !onMovingPlatform) instance_create(x, y + 8, oParticle);


	#region //squash and stretch
	xscale = approach(xscale, 1, 0.05);
	yscale = approach(yscale, 1, 0.05);
	#endregion
	
	#region //open locker
	if(action && (oRyuController.keyCount > 0) && (place_meeting(x + blockSize, y, oLocker) || place_meeting(x - blockSize, y, oLocker))){
		instance_destroy(oLocker);
		oRyuController.keyCount--;
	}
	#endregion
	
	#region //touch spikes
	if(place_meeting(x, y, oParentHazards) && (!damaged)){
		alarm[11] = 20; //set a timer for the death animation to finish
		state = death;
		audio_play_sound(sdDeath, 3, false);
		control = false;
		damaged = true;
	}
	#endregion
	
	#region //out of camera in auto scroll levels
	if(instance_exists(oAutoRightCamera)){
		var CameraX = camera_get_view_x(view_camera[0]);
		var maxCameraX = CameraX + camera_get_view_width(view_camera[0]);
		if(x > maxCameraX || x < CameraX){
			alarm[11] = 20; //set a timer for the death animation to finish
			state = death;
			control = false;
		}
	}
	#endregion
	
	#region //coyote time
	if(jumpBufferTimer > 0){
		coyoteJump = true
	}else{
		coyoteJump = false;
	}
	
	if(coyoteJump){
		if(onGround || ledgeJumpTimer > 0){
			audio_play_sound(sdJump, 5, false);
			yVelo = -jumpHeight;
	        yscale = 1.33;
	        xscale = 0.67;
			ledgeJumpTimer = 0;
			jumpBufferTimer = 0
		}
		jumpBufferTimer--;
	}
	#endregion
	
	#region //Boomerang
	if(action && oRyuController.abilityTP){  //Can teleport after coolect the scroll
		if(!instance_exists(oTeleport)){
			instance_create_layer(x, y-1, "MainEntities", oTeleport);
		}
		if(instance_exists(oTeleport)){
			var RyutempX = x;
			if(abs(oTeleport.x - RyutempX) > 1){								//fix can't shoot bug
				x = oTeleport.x;
				
				if(place_meeting(oTeleport.x,oTeleport.y+1,oParentSolid)){			//fix foot stuck in wall bug
					y = oTeleport.y-12;
				}else if(place_meeting(oTeleport.x,oTeleport.y-1,oParentSolid)){	//fix head stuck in wall bug
					y = oTeleport.y+12;
				}else{																//normal teleport
					y = oTeleport.y;
				}
				
				instance_destroy(oTeleport);
				instance_create(x, y, oTeleportEffect);
				audio_play_sound(sdTeleport, 2, false);
			}
		}
	}
	#endregion
	
	#region //enemies
	/*if(place_meeting(x, y + 6, oParentEnemies) && yVelo > 0){   //under my feet and velo should be positive
		//var enemy = instance_place(x, y + 6, oParentEnemies);
		//instance_destroy(enemy);
		if(jumpHold || jump || jumpRelease){  //to jump high when stomp on enemy
			yVelo = -jumpHeight
		}else{
			yVelo = -jumpHeight / 2;
		}
	}else if(place_meeting(x, y , oParentEnemies) && yVelo <= 0){
		alarm[11] = 20; //set a timer for the death animation to finish
		audio_play_sound(sdDeath, 3, false);
		state = death;
		control = false;
	}*/
	#endregion
	
}//end of control

//warp transitions
var warp = instance_place(x, y, oWarp);
if(warp != noone){
	with(oGame){
		targetRoom = warp.targetRoom;
		if(oRyu.up){
			doTransition = true;
			if(oRyu.hasCheese) {
				oRyuController.cheeseCount++;
				oRyu.hasCheese = false;
			}
		}
	}
}

//show_debug_message(state);