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
	if(action){
		instance_create(x + 40, y + 9, oBullet);
	}
}

if(shipHealth <= 0){
	control = false;
	repeat(10){
		var xx = random_range(x-40, x+40);
		var yy = random_range(x-18, x+18);
		instance_create(xx, yy, oShipExplode);
	}
}
