/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x, y, oRyu) && !dialogueActiveCount){
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
	oRyu.control = false;
	dialogueActiveCount = true;
}
if( !instance_exists(obj_textbox) && dialogueActiveCount){
	oRyu.control = true;
}

