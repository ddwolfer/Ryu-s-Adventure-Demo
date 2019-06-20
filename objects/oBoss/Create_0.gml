//basic variable
moveSpeed = 1;
dir = 1;
width = room_width;
height = room_height;
instance_create(x , y , oBossFire);
originalXPosition = 336;
bossHealth = 250;
flash = 0;

//state
idle = 10;
attack1 = 11;
attack2 = 12;

state = idle;

//shooting variables
fire1 = true;
fire2 = true;
attacked = false;

fireCounter = 0;
idleCounter = 0;

flyAttackSpeed = 0;
explosionCounter = 0;
