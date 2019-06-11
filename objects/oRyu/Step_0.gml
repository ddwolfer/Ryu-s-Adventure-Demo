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
	if(!onGround){
		yVelo = approach(yVelo, yVeloMax, gravityNormal);
	}

	if(!onMovingPlatform){
		if(left){
			facing = 1;
			state = run;
			//Apply acceleration left
			if(xVelo > 0) xVelo = approach(xVelo, 0, tempFric);
			xVelo = approach(xVelo, -xVeloMax, tempAccel);
		}else if(right){
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
		else if(left){
			facing = 1;
			state = run;
			//Apply acceleration left
			if(xVelo > 0) xVelo = approach(xVelo, 0, tempFric);
			xVelo = approach(xVelo, -xVeloMax, tempAccel);
		}else if(right){
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

	//Jump
	if(jump){
		if(onGround || ledgeJumpTimer > 0){
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
		
	}else if (jumpRelease) { 
	    if (yVelo < 0)
	        yVelo *= 0.25;
	}
	
	if(!onGround) {
		state = jump;
		if(jump && canDJump){
			 yVelo = -jumpHeight * (2 / 3);
			 canDJump = false;
			 instance_create(x , y + 12, oJumpEffect);
			 audio_play_sound(sdJump, 2, false);
		}
	}

	//Particles
	else if (random(100) > 85 && abs(xVelo) > 0.5 && !onMovingPlatform) instance_create(x, y + 8, oParticle);


	//squash and stretch
	xscale = approach(xscale, 1, 0.05);
	yscale = approach(yscale, 1, 0.05);

	//open locker
	if(action && (oRyuController.keyCount > 0) && (place_meeting(x + blockSize, y, oLocker) || place_meeting(x - blockSize, y, oLocker))){
		instance_destroy(oLocker);
		oRyuController.keyCount--;
	}

	//touch spikes
	if(place_meeting(x, y, oParentHazards) && (!damaged)){
		alarm[11] = 20; //set a timer for the death animation to finish
		state = death;
		audio_play_sound(sdDeath, 3, false);
		control = false;
		damaged = true;
	}
	
	//out of camera in auto scroll levels
	if(instance_exists(oAutoRightCamera)){
		var CameraX = camera_get_view_x(view_camera[0]);
		var maxCameraX = CameraX + camera_get_view_width(view_camera[0]);
		if(x > maxCameraX || x < CameraX){
			alarm[11] = 20; //set a timer for the death animation to finish
			state = death;
			control = false;
		}
	}
	
	//coyote time
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
	}//end of coyote jump
	
	//enemies
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
	
	//Boomerang
	if(action){
		if(!instance_exists(oTeleport)){
			instance_create_layer(x, y, "MainEntities", oTeleport);
		}
		if(instance_exists(oTeleport)){
			var RyutempX = x;
			x = oTeleport.x;

			if(place_meeting(oTeleport.x+12,oTeleport.y,oParentSolid)){			//fix foot stuck in wall bug
				y = oTeleport.y-12;
			}else if(place_meeting(oTeleport.x-12,oTeleport.y,oParentSolid)){	//fix head stuck in wall bug
				y = oTeleport.y+12;
			}else{																//normal teleport
				y = oTeleport.y;
			}
			if(abs(oTeleport.x - RyutempX) > 1){								//fix can't shoot bug
				instance_destroy(oTeleport);
			}
		}
	}
	
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

