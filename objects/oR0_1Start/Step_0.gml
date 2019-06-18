/// @description dialogue disappear
// You can write your code in this editor
if( !instance_exists(obj_textbox) && !DialogueDisappear){
	alarm[0] = 90;
	DialogueDisappear = true;
	
}
if(DialogueDisappear == true){
	
	BlackBackground.image_alpha += 0.01
}