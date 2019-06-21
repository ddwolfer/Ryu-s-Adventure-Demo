/// @description Insert description here
// You can write your code in this editor
if( place_meeting(x,y,oRyu) && !activeDialogue ){
	oDialogueTriggerFinalFight.CreateDialougeByTrigger = true;
	activeDialogue = true;
}
if( instance_exists(obj_textbox) && activeDialogue ){
	
}