//floating effect
top = y - 1;
bottom = y + 0.8;
dir = 1;
floatSpeed = 0.05;

follow = false;

image_speed = 0.6;

if(oRyuController.abilityDJump == true){ //check Ryu have double jump scroll
	instance_destroy(oScrollDJ);
}
getScroll = false;
