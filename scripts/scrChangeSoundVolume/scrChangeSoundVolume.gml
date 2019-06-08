/// @description change sound volume
/// @param shift

var shift = argument[0];

var SOUND_VOLUME = clamp(SOUND_VOLUME + shift, 0, 1);
audio_group_set_gain(sound_effects, SOUND_VOLUME, 0);