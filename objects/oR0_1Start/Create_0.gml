/// @description 設定開頭文本
// You can write your code in this editor

//EN
mytxt[0, 0] = "TXT0000001";
mytxt[0, 1] = "TXT00000002";
//CN
mytxt[1, 0] = "歡銀來到這";
mytxt[1, 1] = "拉拉";

DialogueDisappear = false;
i = 1;

create_textevent(
    mytxt,
    -1,
    [[1, 1],[1,2]],
    -1,
    -1,
    -1,
    -1,
    [ [1,c_black],[1,c_black] ],
    -1,
    -1,
);

//show_debug_overlay(true);