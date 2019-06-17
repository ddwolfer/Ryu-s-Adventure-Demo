/// @description Insert description here
// You can write your code in this editor
getInput();

//if press up , disappear Ryu and change ship image
if(up && place_meeting(x,y,oRyu)){
	alarm[0] = 60;
	
	oRyu.image_alpha = 0;
	oRyu.control = false;
	oShipStatic.image_alpha = 1;
}
//when girl finish dialogue
if( !instance_exists(obj_textbox) && activedialouge == 1){

	oRyu.control = true;
	audio_play_sound(sMusic, 3, true);
	room_goto(2);
}