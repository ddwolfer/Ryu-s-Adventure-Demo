/// @description plays music
/// @param music
/// @param looping

//primary value of script is it tracks which song is currently playing
//and prevents the song from being restarted if it is alreadying playing
//adapted from Flop Rocket Source Code Walkthrough, YouTube, Butterscotch Shenanigans


var song = argument[0];
var looping = argument[1];

if (song != CURRENT_MUSIC) {
	audio_stop_sound(CURRENT_MUSIC);
	audio_play_sound(song, 1000, looping);	
	CURRENT_MUSIC = song;
}