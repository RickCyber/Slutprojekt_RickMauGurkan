/// @description End Attack
// You can write your code in this editor
if (state == scr_bow_state or state == scr_sword_state or state == scr_icerod_state)
{
	if (obj_player.attack == 1)
	{
		obj_player.sprite_index = spr_big_boy_side_sword_animation_right
	}
	else
	{
		obj_player.sprite_index = spr_big_boy_side_bow_animation_right
	}
	state = scr_move_state;
	attacked = false;
	spd = 2;
}