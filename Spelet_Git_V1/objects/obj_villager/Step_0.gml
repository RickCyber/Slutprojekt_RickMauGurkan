/// @description Insert description here
// You can write your code in this editor
if (VilNum == 6 and obj_player.dash == true)
{
	VilNum = 0;
}

if (VilNum == 7 and obj_player.amulet1 == false)
{
	instance_destroy();
}

phy_position_y += spd;

if (spd < 0)
{
	sprite_index = spr_holy_boi_back;
	if (y < 342 and room == rm_church)
	{
		obj_player.alarm[7] = 60;
		instance_destroy();
	}
	else if (y < 312)
	{
		instance_destroy();
	}
}

if (room == rm_final_2)
{
	if physics_test_overlap(x,y,0,obj_sword)
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
				
			case spr_big_boy_side_bow_attack_animation_left:
				obj_player.sprite_index = spr_big_boy_side_bow_breath_left;
				break;
		
			case spr_big_boy_side_bow_attack_animation_right:
				obj_player.sprite_index = spr_big_boy_side_bow_breath_right;
				break;
			
			case spr_big_boy_side_sword_attack_animation_left:
				obj_player.sprite_index = spr_big_boy_side_sword_breath_left;
				break;
		
			case spr_big_boy_side_sword_attack_animation_right:
				obj_player.sprite_index = spr_big_boy_side_sword_breath_right;
				break;
		}
		scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_player_second_text);
		instance_destroy();
	}
	
	if physics_test_overlap(x,y,0,obj_pil)
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
				
			case spr_big_boy_side_bow_attack_animation_left:
				obj_player.sprite_index = spr_big_boy_side_bow_breath_left;
				break;
		
			case spr_big_boy_side_bow_attack_animation_right:
				obj_player.sprite_index = spr_big_boy_side_bow_breath_right;
				break;
			
			case spr_big_boy_side_sword_attack_animation_left:
				obj_player.sprite_index = spr_big_boy_side_sword_breath_left;
				break;
		
			case spr_big_boy_side_sword_attack_animation_right:
				obj_player.sprite_index = spr_big_boy_side_sword_breath_right;
				break;
		}
		scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_player_second_text);
		instance_destroy();
		instance_destroy(obj_pil);
	}
}