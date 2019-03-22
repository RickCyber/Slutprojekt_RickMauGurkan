///scr_zombie_stall
fall = false;

image_speed = 0;

//Change from correct sprite after attack
switch (sprite_index)
{
	case spr_zombie_side_Animation_Walk_Attack:
		sprite_index = spr_zombie_side_Animation_Walk;
		break;
		
	case spr_zombie_side_Animation_Walk_Attack_left:
		sprite_index = spr_zombie_side_Animation_Walk_left;
		break;
			
	case spr_attack_up:
		sprite_index = spr_player_up;
		break;
		
	case spr_attack_left:
		sprite_index = spr_player_left;
		break;
}

//After stall is finished go to move states
if (alarm[3] <= 0)
{
	state = scr_zombie_idle;
}