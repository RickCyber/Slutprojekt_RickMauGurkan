///scr_icerod_state

scr_get_input();

image_speed = 1.25;

// Change to icerod sprite based on direction
switch (sprite_index)
{
	case spr_big_boy_side_bow_animation_left:
		sprite_index = spr_big_boy_side_icerod_animation_left;
		break;
		
	case spr_big_boy_side_bow_animation_right:
		sprite_index = spr_big_boy_side_icerod_animation_right;
		break;
			
	case spr_big_boy_side_sword_animation_left:
		sprite_index = spr_big_boy_side_icerod_animation_left;
		break;
		
	case spr_big_boy_side_sword_animation_right:
		sprite_index = spr_big_boy_side_icerod_animation_right;
		break;
		
	case spr_big_boy_side_bow_breath_left:
		sprite_index = spr_big_boy_side_icerod_animation_left;
		break;
		
	case spr_big_boy_side_bow_breath_right:
		sprite_index = spr_big_boy_side_icerod_animation_right;
		break;
		
	case spr_big_boy_side_sword_breath_left:
		sprite_index = spr_big_boy_side_icerod_animation_left;
		break;
		
	case spr_big_boy_side_sword_breath_right:
		sprite_index = spr_big_boy_side_icerod_animation_right;
		break;
}

// Use icerod only once
if (attacked == false)
{
	//Get distance based upon which direction
	var xx = 0;
	var yy = 0;
	if (face == 1)
	{
		xx = x;
		yy = y-12;
	}
	else if (face == 3)
	{
		xx = x;
		yy = y+12;
	}
	else if (face == 0)
	{
		xx = x+16;
		yy = y+2;
	}
	else if (face == 2)
	{
		xx = x-16;
		yy = y+2;
	}
	/*
	switch (sprite_index)
	{
		case spr_attack_down:
			xx = x;
			yy = y+12;
			break;
		
		case spr_attack_right:
			xx = x+16;
			yy = y+2;
			break;
			
		case spr_attack_up:
			xx = x;
			yy = y-12;
			break;
		
		case spr_attack_left:
			xx = x-16;
			yy = y+2;
			break;
	}*/
	
	///Create Icerod, Make it so it doesn't hit player, Make it so it only do it once
	var damage = instance_create_depth(xx,yy,depth,obj_ice)
	damage.creator = id;
	attacked = true;
}