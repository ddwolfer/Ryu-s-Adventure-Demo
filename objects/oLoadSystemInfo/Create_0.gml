/// @description Insert description here
// You can write your code in this editor
LoadSystemfile = true;

#region//Load Langeage Volume		
if(file_exists("saveSystem.sav")){
	var wrapper = LoadJSONFromFile("saveSystem.sav");
	var list = wrapper[? "System"];
	
	var map = list;	
	
	if(map[? "MusicVol"] == undefined || map[? "SFXVol"] == undefined ||  map[? "Language"] == undefined){
		oGame.languageIndex = 0;
		MusicLoad = 10;
		SFXLoad = 10;
	}else{
		show_debug_message("YESSSSSSSSSSSSSSSSSSSSS" );
		oGame.languageIndex = map[? "Language"];
		MusicLoad = (map[? "MusicVol"] - 10 )/10;
		SFXLoad = (map[? "SFXVol"] - 10 )/10;
	}
	
				
	ds_map_destroy(wrapper);
}
#endregion