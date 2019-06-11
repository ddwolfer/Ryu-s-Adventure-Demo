#region //set sound volume
defaultVolume = 0.2
audio_group_set_gain(soundEffect, defaultVolume, 0);
audio_group_set_gain(music, defaultVolume, 0);
#endregion

//set font
f = font_add("EquipmentPro.ttf", 20, false, false, 32, 128);

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
menu[3] = "New Game";
menu[2] = "Continue";
menu[1] = "Options";
menu[0] = "Quit";
//option txx
options[3] = "Music : ";
options[2] = "SFX : ";
options[1] = "Language : ";
options[0] = "BACK TO MENU";
//Language options
Language_option[1] = "Taiwanese";
Language_option[0] = "English";

//variable for step 
menuCount = array_length_1d(menu);
optionsCount = array_length_1d(options);
Language_Count = array_length_1d(Language_option);
cursor = 3;
cursor_options = 3;
cursor_Language = 0;

//variable for controll view
enum menu_screen { //which page now
	main = 0,
	options = 1,
	height = 2,
}
screen = menu_screen.main


