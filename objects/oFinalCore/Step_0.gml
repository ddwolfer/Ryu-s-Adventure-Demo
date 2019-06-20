/// @description Insert description here
// You can write your code in this editor
if(StartShake){
	addScreenShake(6, 10);
}

if(place_meeting(x,y,oTeleport)){
	show_debug_message("touch");
	StartShake = true;

	create_textevent(
	    myTxT,
	    -1,
	    -1,
	    -1,
	    -1,
	    -1,
	    -1,
	    -1,
	    -1,
	    -1,
	);
	alarm[0] = 60;
}
if(!instance_exists(obj_textbox) && nextDialogue && !DialogueEND){
	//show ladder and fire
	layer_set_visible(layer_get_id("escape"),1);
	layer_set_visible(layer_get_id("Lighting2"),1);
	create_textevent(
	    myTxT01,
	    -1,
	    -1,
	    -1,
	    -1,
	    -1,
	    -1,
	    -1,
	    -1,
	    -1,
	);
	DialogueEND = true;
}