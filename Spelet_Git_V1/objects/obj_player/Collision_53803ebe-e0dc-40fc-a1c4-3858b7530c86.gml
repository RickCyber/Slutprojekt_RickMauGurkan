/// @description Insert description here
// You can write your code in this editor
//Fall if on none frozen water

if (state != scr_dash_state and state != scr_hookshot_state and fall == false and other.frozen == false)
{
	switch (sprite_index)
	{
		case spr_big_boy_side_sword_attack_animation_left:
			sprite_index = spr_big_boy_side_sword_animation_left;
			break;
		
		case spr_big_boy_side_sword_attack_animation_right:
			sprite_index = spr_big_boy_side_sword_animation_right;
			break;
			
		case spr_big_boy_side_bow_attack_animation_left:
			sprite_index = spr_big_boy_side_bow_animation_left;
			break;
		
		case spr_big_boy_side_bow_attack_animation_right:
			sprite_index = spr_big_boy_side_bow_animation_right;
			break;
	}
	fall = true;
	state = scr_fall_state;
	alarm[1] = room_speed;
}
