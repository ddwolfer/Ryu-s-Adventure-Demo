#region //set sound volume
defaultVolume = 0.2
audio_group_set_gain(soundEffect, defaultVolume, 0);
audio_group_set_gain(music, defaultVolume, 0);
#endregion

//set font
f = font_add("Chinese.ttf", 20, false, false, 32, 128);

chosen = -1;
//set position
width = display_get_gui_width();
height = display_get_gui_height();
widthHalf = width / 2;
heightHalf = height / 2;
//padding = 40;
fontSize = font_get_size(f);
menuCommited = -1;
optionsCommited = -1;

//menu txt
menu[0, 3] = "New Game";
menu[0, 2] = "Continue";
menu[0, 1] = "Options";
menu[0, 0] = "Quit";

menu[1, 3] = "新遊戲";
menu[1, 2] = "繼續遊戲";
menu[1, 1] = "選項";
menu[1, 0] = "退出";
//option txx
options[0, 3] = "Music : ";
options[0, 2] = "SFX : ";
options[0, 1] = "Language : ";
options[0, 0] = "Back to Menu";

options[1, 3] = "音樂 : ";
options[1, 2] = "音效 : ";
options[1, 1] = "語言 : ";
options[1, 0] = "回到主選單";
//Language options
Language_option[1] = "繁體中文";
Language_option[0] = "English";

//variable for step 
menuCount = array_length_2d(menu, 0);
optionsCount = array_length_2d(options, 0);
Language_Count = array_length_1d(Language_option);
cursor = 3;
cursor_options = 3;
cursor_Language = oGame.languageIndex;

//variable for controll view
enum menu_screen { //which page now
	main = 0,
	options = 1,
	height = 2,
}
screen = menu_screen.main

test = 0;


