/// @description 
y += fallSpeed;
x += -oRyu.xVelo * 0.1;

if(y >= room_height) y = 0;
if(x >= room_width) x = 0;
else if(x <= 0) x = room_width;
