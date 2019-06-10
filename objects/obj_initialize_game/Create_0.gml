/// @description Initialize Game


//general settings
scr_resolution_set();   
randomize();   


//initialize objects
instance_create_layer(x, y, layer, obj_game_controller);
instance_create_layer(x, y, layer, obj_sound_controller);


//brief delay to start
alarm[0] = 10;





