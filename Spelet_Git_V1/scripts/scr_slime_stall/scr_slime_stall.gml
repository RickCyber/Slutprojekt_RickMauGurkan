///scr_slime_stall

image_speed = 0;

image_blend = c_black;

//Change from correct sprite after attack
switch (sprite_index)
{
	case spr_attack_down:
		sprite_index = spr_player_down;
		break;
		
	case spr_slime_attack_right:
		sprite_index = spr_slime_right;
		break;
			
	case spr_attack_up:
		sprite_index = spr_player_up;
		break;
		
	case spr_slime_attack_left:
		sprite_index = spr_slime_left;
		break;
}

//After stall is finished go to move states
if (alarm[3] <= 0)
{
	state = scr_slime_idle;
}