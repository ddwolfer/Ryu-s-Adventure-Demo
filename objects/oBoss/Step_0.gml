switch(state){
	case idle:
		y += moveSpeed * dir;
		if(y >= height - 40) dir *= -1;
		else if(y <= 40) dir *= -1;
	break;
	
	case attack1:
		if(fire1){
			alarm[0] = 90;
			fire1 = false;
		}
	break;
	
	case attack2:
		y= lerp(y, room_height / 2, 0.05);
		x -= flyAttackSpeed;
		
		if(fire2){
			alarm[1] = 60;
			fire2 = false;
		}
		
		if(x <= -40){
			flyAttackSpeed = -2;
			attacked = true;
		} else if(x >=originalXPosition && attacked) {
			flyAttackSpeed = 0;
			fire2 = true;
			attacked = false;
		}	
	break;
}
