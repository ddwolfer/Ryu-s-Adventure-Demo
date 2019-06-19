
drawGrayBackround = false;

//set font
levelMenuFont = font_add("Chinese.ttf", 20, false, false, 32, 128);

//set position
width = display_get_gui_width();
height = display_get_gui_height();
widthHalf = width / 2;
heightHalf = height / 2;
fontSize = font_get_size(levelMenuFont);
optionsCommited = -1;

//option txx
options[0, 5] = "Music : ";
options[0, 4] = "SFX : ";
options[0, 3] = "Language : ";
options[0, 2] = "Save the Game"
options[0, 1] = "Back to Menu";
options[0, 0] = "Resume";

options[1, 5] = "音樂 : ";
options[1, 4] = "音效 : ";
options[1, 3] = "語言 : ";
options[1, 2] = "儲存遊戲"
options[1, 1] = "回到主選單";
options[1, 0] = "回到遊戲";
//Language options
Language_option[1] = "繁體中文";
Language_option[0] = "English";

//variable for step 
cursor_Language = 0;
optionsCount = array_length_2d(options, 0);
Language_Count = array_length_1d(Language_option);
cursor_options = 5;

