/// @description Insert description here
// You can write your code in this editor
switch (sprite)
{
	case 1:
		sprite_index = spr_big_boy_front_bow;
		break;
		
	case 2:
		sprite_index = spr_big_boy_back_bow;
		break;
			
	case 3:
		sprite_index = spr_big_boy_side_bow;
		break;
		
	case 4:
		sprite_index = spr_big_boy_front_sword;
		break;
		
	case 5:
		sprite_index = spr_big_boy_back_sword;
		break;
		
	case 6:
		sprite_index = spr_big_boy_side_sword;
		break;
			
	case 7:
		sprite_index = spr_holy_boi_back;
		break;
		
	case 8:
		sprite_index = spr_holy_boi_front;
		break;
		
	case 9:
		sprite_index = spr_notholy_boy_front;
		break;
		
	case 10:
		sprite_index = spr_slime;
		break;
			
	case 11:
		sprite_index = spr_villager_female;
		break;
		
	case 12:
		sprite_index = spr_villager_male;
		break;
		
	case 13:
		sprite_index = spr_zombie_back;
		break;
		
	case 14:
		sprite_index = spr_zombie_front;
		break;
			
	case 15:
		sprite_index = spr_zombie_otherside;
		break;
		
	case 16:
		sprite_index = spr_zombie_side;
		break;
}

if (sprite >= 16)
{
	sprite = 1;
}