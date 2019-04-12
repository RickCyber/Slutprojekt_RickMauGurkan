/// @description Insert description here
// You can write your code in this editor
if (what == true)
{
	scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_player_text);
	faller = true;
	if audio_is_playing(snd_churchpit){
		audio_stop_sound(snd_churchpit)
	}
}

if (what == false)
{
	scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_player_third_text);
	what = true;
}