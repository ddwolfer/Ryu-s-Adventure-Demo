/// @description Initialize Main Menu


//play music
scr_play_music(snd_music_title, true);


//title
title = "TITLE";


//menu options
main_menu[0] = "START";
main_menu[1] = "OPTIONS";
main_menu[2] = "EXIT";

options_menu[0] = "MASTER VOLUME";
options_menu[1] = "MUSIC";
options_menu[2] = "SFX";
options_menu[3] = "MENU";


enum menu_screen {
	main = 0,
	options = 1,
	height = 2,
}

screen = menu_screen.main;


//visual options
spacing = 48;
xx = GUI_WIDTH - 50;
yy = GUI_HEIGHT/1.75;
x_scale = 1;
y_scale = 1;

options_x = HALF_GUI_WIDTH - spacing/2;
options_y = GUI_HEIGHT/2.5;


//fonts
title_font = fnt_title_60;
menu_font = fnt_menu_24;


//menu select
main_menu_select = 0;
options_menu_select = 0;