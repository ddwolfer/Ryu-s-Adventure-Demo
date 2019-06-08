/// @description Insert description here
// You can write your code in this editor




if(place_meeting(x, y, oRyu)){
	if(activeTimes > dialogueActiveCount){
		create_textevent(
		["......!!!  What the hell ???","(you can save your progress on this checkpoint)"],
		-1,
		[ [1,0],[1,0]],
		[[1,1],[1,1]],
		-1,
		-1,
		-1,
		[ [1,c_black],[1,c_black] ],
		-1,
		-1,
		);
		oRyu.control = false;
		dialogueActiveCount++;
	}
	
}

if( !instance_exists(obj_textbox)){
	oRyu.control = true;
}

