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
options[4] = "Music : ";
options[3] = "SFX : ";
options[2] = "Language : ";
options[1] = "BACK TO MENU";
options[0] = "RESUME";
//Language options
Language_option[1] = "Taiwanese";
Language_option[0] = "English";

//variable for step 
optionsCount = array_length_1d(options);
Language_Count = array_length_1d(Language_option);
cursor_options = 4;
cursor_Language = 0;