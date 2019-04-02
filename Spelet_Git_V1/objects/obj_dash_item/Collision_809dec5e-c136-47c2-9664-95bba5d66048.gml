/// @description Insert description here
// You can write your code in this editor
obj_player.dash = true;
instance_destroy();
if !audio_is_playing(snd_pickup){
	audio_play_sound(snd_pickup,2,false)
}