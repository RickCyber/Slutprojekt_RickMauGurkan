/// @description Insert description here
// You can write your code in this editor
//Fall if on none frozen water

if (state != scr_dash_state and state != scr_hookshot_state and fall == false and other.frozen == false)
{
	switch (sprite_index)
	{
		case spr_attack_down:
			sprite_index = spr_player_down;
			break;
		
		case spr_attack_right:
			sprite_index = spr_player_right;
			break;
			
		case spr_attack_up:
			sprite_index = spr_player_up;
			break;
		
		case spr_attack_left:
			sprite_index = spr_player_left;
			break;
	}
	fall = true;
	state = scr_fall_state;
	alarm[1] = room_speed;
}
