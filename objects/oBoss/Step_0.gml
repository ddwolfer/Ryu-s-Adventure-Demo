switch(state){
	case idle:
		y += moveSpeed * dir;
		if(y >= height - 40) dir *= -1;
		else if(y <= 40) dir *= -1;
		idleCounter++;
		
		if(idleCounter >= 200){
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
