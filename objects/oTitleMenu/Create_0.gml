
f = font_add("EquipmentPro.ttf", 20, false, false, 32, 128);

chosen = -1;

width = display_get_gui_width();
height = display_get_gui_height();
widthHalf = width / 2;
heightHalf = height / 2;
padding = 40;
fontSize = font_get_size(f);
menuCommited = -1;
optionsCommited = -1;

menu[3] = "New Game";
menu[2] = "Continue";
menu[1] = "Options";
menu[0] = "Quit";

options[3] = "Music : ";
options[2] = "SFX : ";
options[1] = "Language : ";
options[0] = "Back To MENU";

Language_option[1] = "Taiwanese";
Language_option[0] = "English";


menuCount = array_length_1d(menu);
optionsCount = array_length_1d(options);
Language_Count = array_length_1d(Language_option);


cursor = 3;
cursor_options = 3;
cursor_Language = 0;

enum menu_screen { //which page we are
	main = 0,
	options = 1,
	height = 2,
}
screen = menu_screen.main


//以下備用

//fonts
//title_font = fnt_title_60;
//menu_font = fnt_menu_24;


//menu select
//main_menu_select = 0;
//options_menu_select = 0;

