/// @description Insert description here
// You can write your code in this editor
if (state == scr_move_state)
{
	alarm[5] = 1;
	state = scr_poison_state;
	move = false;
}

alarm[6] = 880;
