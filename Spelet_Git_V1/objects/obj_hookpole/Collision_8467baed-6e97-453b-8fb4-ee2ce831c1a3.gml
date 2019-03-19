/// @description Insert description here
// You can write your code in this editor
if (obj_player.move == true)
{
	obj_player.state = scr_move_state;
}
else
{
	obj_player.state = scr_poison_state;
}