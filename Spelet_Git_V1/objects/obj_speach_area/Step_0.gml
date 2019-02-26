/// @description Insert description here
// You can write your code in this editor
if (physics_test_overlap(x,y,0,obj_player))
{
	if (keyboard_check_pressed(ord("E")) or gamepad_button_check_pressed(0, gp_face2))
	{
		if (creator == 0)
		{
			if (obj_player.amulet1 == true)
			{
				scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_second_text);
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
			}
			else
			{
				scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_intro_text);
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
			}
		}
		
		if (creator == 1)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_second_text);
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
		}
	}
}