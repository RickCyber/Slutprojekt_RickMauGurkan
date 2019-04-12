/// @description Insert description here
// You can write your code in this editor
obj_view.y = random_range(0,room_height);
obj_view.x = random_range(0,room_width);

if (shake >= 5)
{
	alarm[7] = 5;
}
else
{
	alarm[11] = 5;
}
if !audio_is_playing(snd_churchpit){
	audio_play_sound(snd_churchpit,1,true)
}