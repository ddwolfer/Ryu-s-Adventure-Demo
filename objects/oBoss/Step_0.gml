if(!instance_exists(oShip)) exit;
switch(state){
	case idle:
		y += moveSpeed * dir;
		if(y >= height - 40) dir *= -1;
		else if(y <= 40) dir *= -1;
		idleCounter++;
		
		if(idleCounter >= 120){
			state = attack1;
			idleCounter = 0;
		}
	break;
	
	case attack1: //idle and shoot
		y += moveSpeed * dir;
		if(y >= height - 40) dir *= -1;
		else if(y <= 40) dir *= -1;
		
		if(fire1){
			alarm[0] = 60;
			fire1 = false;
		}
		
		if(fireCounter == 9){
			state = attack2
			fireCounter = 0;
		}
	break;
	
	case attack2:   //charge attack
		if(!attacked){
			y= lerp(y, oShip.y, 0.05);
		}else if(attacked){
			
		}
		x -= flyAttackSpeed;
		
		if(fire2){
			alarm[1] = 180;
			fire2 = false;
		}
		
		if(x <= -40){
			flyAttackSpeed = -2;
		} else if(x >=originalXPosition && attacked) {
			flyAttackSpeed = 0;
			fire2 = true;
			attacked = false;
			state = idle;
		}	
	break;
}
if(bossHealth <= 0){
	moveSpeed = 0;
	flyAttackSpeed = 0;
	if(explosionCounter <= 100){
		var xx = random_range(x - 40, x + 40);
		var yy = random_range(y - 40, y + 40);
		instance_create(xx, yy, oShipExplode);
		explosionCounter++;
	}else if(explosionCounter >100){
		instance_destroy(self);
	}
}
show_debug_message(bossHealth);