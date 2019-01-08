/// @description End Attack
// You can write your code in this editor
if (state == scr_bow_state or state == scr_sword_state or state == scr_icerod_state)
{
	sprite_index = spr_player_right;
	state = scr_move_state;
	attacked = false;
	spd = 2;
}