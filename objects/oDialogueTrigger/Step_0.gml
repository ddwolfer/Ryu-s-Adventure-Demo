/// @description Insert description here
// You can write your code in this editor




if(place_meeting(x, y, oRyu)){
	if(activeTimes > dialogueActiveCount){
		create_textevent(
		["My name is Byoku Masaka Oniwa!!!!!!!","As I breathe, you should not pass!!!!!!"],
		-1,
		[ [1,1],[1,1]],
		[[1,1],[1,2]],
		-1,
		-1,
		-1,
		[ [1,c_blue],[1,c_purple] ],
		-1,
		-1,
		);
		oRyu.control = false;
		dialogueActiveCount++;
	}
	fade = true
	
}

if( !instance_exists(obj_textbox) ){
	oRyu.control = true;
}

if(fade == true){
	oBoss.image_alpha += 0.01
}