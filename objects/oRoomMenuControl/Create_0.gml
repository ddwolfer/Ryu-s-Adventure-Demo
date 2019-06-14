/// @description Insert description here
// You can write your code in this editor

drawGrayBackround = false;

//set font
levelMenuFont = font_add("EquipmentPro.ttf", 30, false, false, 32, 128);

//set position
width = display_get_gui_width();
height = display_get_gui_height();
widthHalf = width / 2;
heightHalf = height / 2;
fontSize = font_get_size(levelMenuFont);
optionsCommited = -1;

//option txx
options[5] = "Music : ";
options[4] = "SFX : ";
options[3] = "Language : ";
options[2] = "Save the Game"
options[1] = "Back to Menu";
options[0] = "Resume";
//Language options
Language_option[1] = "Taiwanese";
Language_option[0] = "English";

//variable for step 
optionsCount = array_length_1d(options);
Language_Count = array_length_1d(Language_option);
cursor_options = 5;
cursor_Language = 0;