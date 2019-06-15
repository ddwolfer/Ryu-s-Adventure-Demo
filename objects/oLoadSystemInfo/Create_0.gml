/// @description Insert description here
// You can write your code in this editor
LoadSystemfile = true;

#region//Load Langeage Volume		
if(file_exists("saveSystem.sav")){
	var wrapper = LoadJSONFromFile("saveSystem.sav");
	var list = wrapper[? "System"];
	
	var map = list;	
	
	oGame.languageIndex = map[? "Language"];
	MusicLoad = (map[? "MusicVol"] - 10 )/10;
	SFXLoad = (map[? "SFXVol"] - 10 )/10;
				
	ds_map_destroy(wrapper);
}
#endregion