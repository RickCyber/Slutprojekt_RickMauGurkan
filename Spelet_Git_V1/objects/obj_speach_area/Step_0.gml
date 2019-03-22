/// @description Insert description here
// You can write your code in this editor
if (room == rm_final_1)
{
	instance_destroy();
}

if (physics_test_overlap(x,y,0,obj_player))
{
	if (keyboard_check_pressed(ord("E")) or gamepad_button_check_pressed(0, gp_face2))
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
		
		if (creator == 0)
		{
			if (obj_player.amulet3 == true)
			{
				scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_second_text);
			}
			else if (obj_player.dash == false)
			{
				scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_villager_intro_text);
			}
			else
			{
				scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_villager_third_text);
			}
		}
		
		if (creator == 1)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_villager_fourth_text);
		}
		
		if (creator == 2)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_villager_second_text);
		}
		
		if (creator == 3)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_villager_fifth_text);
		}
		
		if (creator == 4)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_villager_first_text);
		}
		
		if (creator == 5)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_villager_sixth_text);
		}
		
		if (creator == 6)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_villager_sixth_text);
		}
		
		if (creator == 7)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_creator_text);
		}
		
		if (creator == 8 and obj_player.hook == false or creator == 8 and !instance_exists(obj_hook_item))
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_wild_first_text);
		}
		else if (creator == 8 and obj_player.hook == true or creator == 8 and instance_exists(obj_hook_item))
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_wild_second_text);
		}
		
		if (creator == 9 and check1 == false)
		{
			check1 = true;
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_wild_third_text);
		}
		else if (creator == 9 and check1 == true)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_wild_fourth_text);
		}
		
		if (creator == 10 and obj_player.dash == false and obj_player.amulet1 == false)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_priest_first_text);
			bootscheck = true;
		}
		else if (creator == 10 and obj_player.dash == true and obj_player.amulet1 == false)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_priest_sixth_text);
		}
		else if (creator == 10 and bootscheck == true and obj_player.amulet1 == false)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_priest_sixth_text);
		}
		else if (creator == 10 and obj_player.dash == true and obj_player.amulet1 == true)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_priest_second_text);
		}
		
		if (creator == 11)
		{
			obj_dummy.text = true;
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_wild_seventh_text);
		}
		
		if (creator == 12)
		{
			scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_wild_fifth_text);
		}
	}
}