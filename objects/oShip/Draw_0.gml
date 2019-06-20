/// @description 
var interval = 8
if(alarm[0] % interval <= interval / 2){
	draw_sprite(sprite_index, -1, x, y);
}