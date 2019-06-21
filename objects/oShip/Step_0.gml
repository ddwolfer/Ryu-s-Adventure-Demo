/// movement
getInput();
if(control){

	if(up){
		sprite_index = sShipUp;
		y -= ySpeed;
	}else if(down){
		sprite_index = sShipDown;
		y += ySpeed;
	}else{
		sprite_index = sShip;
	}

	if(right){
		x += xSpeed;
	}else if(left){
		x -= xSpeed;
	}

	//lock inside the room
	if(x < 30) x = 30;
	if(y < 15) y = 15
	if(y > height - 15) y = height - 15;
	
	//shoot
	if(actionTurbo && canShoot && !instance_exists(obj_textbox)){
		audio_play_sound(sdShipShoot, 3, false);
		instance_create(x + 40, y + 9, oBullet);
		canShoot = false;
		alarm[1] = 10;
	}
}

if(oShipSpawner.shipHealth <= 0){
	control = false;
	if(explosionCounter <= 15){
		var xx = random_range(x - 40, x + 40);
		var yy = random_range(y - 18, y + 18);
		instance_create(xx, yy, oShipExplode);
		explosionCounter++;
	}else if(explosionCounter >15){
		instance_destroy(self);
	}
}

//show_debug_message(shipHealth);
