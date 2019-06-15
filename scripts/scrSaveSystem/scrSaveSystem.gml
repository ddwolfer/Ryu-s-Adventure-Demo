//create root list
var rootList = ds_list_create();
//save system
var map = ds_map_create();
ds_list_add(rootList,map);
ds_list_mark_as_map(rootList, ds_list_size(rootList) - 1);

ds_map_add(map,"obj",object_get_name(object_index));
ds_map_add(map,"Language",oGame.languageIndex);
ds_map_add(map,"SFXVol",round(scrControlSound(SOUND_VOLUME, 0, 1, 0, 10)));
ds_map_add(map,"MusicVol",round(scrControlSound(MUSIC_VOLUME, 0, 1, 0, 10)) );
//wrap the root list up in a map
var wrapper = ds_map_create();
ds_map_add_list(wrapper, "System", rootList);
//save all of this to a string
var str = json_encode(wrapper);
SaveStringToFile("saveSystem.sav", str);					
show_debug_message(str);
//Nuke the data
ds_map_destroy(wrapper);