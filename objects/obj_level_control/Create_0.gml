/// @description Initialize Level


//create global vars for level
//note only use globals that should be reset at the start of the level
//any global you would save should go in obj_game

globalvar LEVEL_START, LEVEL_RUNNING, LEVEL_OVER;

LEVEL_START = false;
LEVEL_RUNNING = false;
LEVEL_OVER = false;


//load in instances
instance_create_layer(x, y, "GUI", obj_game_gui);


scr_play_music(snd_music_level, true);