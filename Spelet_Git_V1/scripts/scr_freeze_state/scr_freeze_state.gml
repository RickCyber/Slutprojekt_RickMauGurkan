///scr_freeze_state

//Enemies will get freezed while in this state

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