/// @description Insert description here
// You can write your code in this editor
if hittable == true and res == false{
	hp -= 15
	if !audio_is_playing(snd_sword_hit){
		audio_play_sound(snd_sword_hit,0,false)
	}
}