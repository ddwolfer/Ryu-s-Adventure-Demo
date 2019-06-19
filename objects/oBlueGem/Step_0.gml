/// @description Insert description here
// You can write your code in this editor
event_inherited();

show_debug_message("Gems: "+string(oRyu.BlueGemsGet))
if(place_meeting(x, y, oRyu)) {
	oRyuController.BlueGemsGet = true;
}