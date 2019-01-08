/// @description Insert description here
// You can write your code in this editor
//Fall down pit
if (other.frozen == false and tick == false)
{
	state = scr_fall_state;
	alarm[0] = room_speed/1;
	tick = true;
}