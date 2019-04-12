/// @description Insert description here
// You can write your code in this editor
if !audio_is_playing(snd_flameatt){
	audio_play_sound(snd_flameatt,1,true)
}
/*
if physics_test_overlap(x,y,0,obj_player)
{
	if (reset == true)
	{
		obj_player.hp -= 1;
		reset = false;
		alarm[1] = 60
	}
}