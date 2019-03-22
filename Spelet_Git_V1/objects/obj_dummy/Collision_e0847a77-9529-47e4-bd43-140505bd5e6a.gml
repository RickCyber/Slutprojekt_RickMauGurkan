/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
instance_destroy();

if (instance_exists(obj_dummy) and text == false)
{
	obj_player.state = scr_freeze_state;
	switch (obj_player.sprite_index)
	{
		case spr_big_boy_side_bow_animation_left:
			obj_player.sprite_index = spr_big_boy_side_bow_breath_left;
			break;
		
		case spr_big_boy_side_bow_animation_right:
			obj_player.sprite_index = spr_big_boy_side_bow_breath_right;
			break;
			
		case spr_big_boy_side_sword_animation_left:
			obj_player.sprite_index = spr_big_boy_side_sword_breath_left;
			break;
		
		case spr_big_boy_side_sword_animation_right:
			obj_player.sprite_index = spr_big_boy_side_sword_breath_right;
			break;
	}
	scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_wild_seventh_text);
}