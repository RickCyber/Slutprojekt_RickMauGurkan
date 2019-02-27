/// @description End Attack
// You can write your code in this editor
if (state == scr_bow_state or state == scr_sword_state or state == scr_icerod_state)
{
	if (obj_player.attack == 1)
	{
		if (face == 0)
		{
			sprite_index = spr_big_boy_side_sword_animation_right
		}
		else
		{
			sprite_index = spr_big_boy_side_sword_animation_left
		}
	}
	else
	{
		if (face == 0)
		{
			sprite_index = spr_big_boy_side_bow_animation_right
		}
		else
		{
			sprite_index = spr_big_boy_side_bow_animation_left
		}
	}
	state = scr_move_state;
	attacked = false;
	spd = 2;
}