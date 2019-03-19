/// @description Insert description here
// You can write your code in this editor
if (room == rm_boss_3 or room == rm_final_boss)
{
	obj_boss3.fas += 1;
}
else if (room == rm_intro)
{
	scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_intro_text);
	state = scr_freeze_state;
	switch (sprite_index)
	{
		case spr_big_boy_side_bow_animation_left:
			sprite_index = spr_big_boy_side_bow_breath_left;
			break;
		
		case spr_big_boy_side_bow_animation_right:
			sprite_index = spr_big_boy_side_bow_breath_right;
			break;
			
		case spr_big_boy_side_sword_animation_left:
			sprite_index = spr_big_boy_side_sword_breath_left;
			break;
		
		case spr_big_boy_side_sword_animation_right:
			sprite_index = spr_big_boy_side_sword_breath_right;
			break;
	}
}
