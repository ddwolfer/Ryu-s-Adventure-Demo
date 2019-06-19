/// @description 設定開頭文本
// You can write your code in this editor

//EN
mytxt[0, 0] = "Legend once said, an asteroid only appears every 10 years, has unlimited treasure";
mytxt[0, 1] = "It attracted every treature hunters to find the treasure";
mytxt[0, 2] = "But no one ever came back, death or alive unknown";
mytxt[0, 3] = "Ryu's dad went there 10 years ago, but never came back";
mytxt[0, 4] = "Since then, no message from his dad";
mytxt[0, 5] = "10 years later..."
//CN
mytxt[1, 0] = "一個傳說中的星球,傳說每10年出現一次,有著數不清的寶藏";
mytxt[1, 1] = "這讓每個寶藏獵人趨之若鶩,前往星球深處探險找寶藏";
mytxt[1, 2] = "但是前往的人卻沒有一個回來過,也不知是死是活";
mytxt[1, 3] = "Ryu的爸爸也在10年前跟家裡告別後前往星球探險";
mytxt[1, 4] = "之後再也沒有爸爸的消息";
mytxt[1, 5] = "現在過了10年......";

DialogueDisappear = false;

create_textevent(
    mytxt,
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

//show_debug_overlay(true);