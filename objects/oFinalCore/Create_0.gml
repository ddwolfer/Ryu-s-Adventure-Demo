/// @description Insert description here
// You can write your code in this editor


//let ladder and fire disappear (layers escape id = 296)
layer_set_visible(layer_get_id("escape"),0);
layer_set_visible(layer_get_id("Lighting2"),0);

myTxT[0,0]	="!!!! what's going wrong here?";
myTxT[1,0]	="!!!! 發生什麼事了?"

myTxT01[0,0]	="The ladder! Let's get out of here."
myTxT01[1,0]	="旁邊有樓梯,趕快逃跑吧"

nextDialogue = false;
DialogueEND = false;
StartShake = false;