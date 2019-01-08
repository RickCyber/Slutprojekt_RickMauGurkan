/// @description Insert description here
// You can write your code in this editor
image_blend = c_blue;

//Freeze only once
if (state != scr_fall_state)
{
	state = scr_freeze_state;
	alarm[1] = 120;
}