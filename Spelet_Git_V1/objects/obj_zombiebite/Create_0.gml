/// @description Insert description here
// You can write your code in this editor
damage = 10;
knockback = 250;
creator = noone;
alarm[0] = 1;
if place_meeting(x,y,obj_player){
	if !audio_is_playing(snd_enemy_hit__1){
		audio_play_sound(snd_enemy_hit__1,2,false)
	}
}