/// @description 
for(var i = 0; i < shipHealth; i++){
	draw_sprite(sHealth, 0, heartX + i * heartWidth, heartY);
}
if(ShipDeathflag){
	transitionAlpha += 0.025;
	draw_set_alpha(transitionAlpha);
	draw_rectangle_color(0, 0, width, height,  c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}
if(FadeinRoom && transitionAlpha > 0){
	transitionAlpha -= 0.025;
	draw_set_alpha(transitionAlpha);
	draw_rectangle_color(0, 0, width, height,  c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}