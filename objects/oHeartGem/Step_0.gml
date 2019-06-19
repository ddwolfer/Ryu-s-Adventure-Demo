/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(place_meeting(x, y, oRyu)){
	oRyuController.HeartGemsGet = true;
	instance_destroy(self);
} 