///scr_bow_state
scr_get_input();

image_speed = 1.5;

// Change to Bow sprite based on direction
switch (sprite_index)
{
	case spr_big_boy_side_bow_animation_left:
		sprite_index = spr_big_boy_side_bow_attack_animation_left;
		break;
		
	case spr_big_boy_side_bow_animation_right:
		sprite_index = spr_big_boy_side_bow_attack_animation_right;
		break;
			
	case spr_big_boy_side_sword_animation_left:
		sprite_index = spr_big_boy_side_bow_attack_animation_left;
		break;
		
	case spr_big_boy_side_sword_animation_right:
		sprite_index = spr_big_boy_side_bow_attack_animation_right;
		break;
		
	case spr_big_boy_side_bow_breath_left:
		sprite_index = spr_big_boy_side_bow_animation_left;
		break;
		
	case spr_big_boy_side_bow_breath_right:
		sprite_index = spr_big_boy_side_bow_animation_right;
		break;
		
	case spr_big_boy_side_sword_breath_left:
		sprite_index = spr_big_boy_side_bow_animation_left;
		break;
		
	case spr_big_boy_side_sword_breath_right:
		sprite_index = spr_big_boy_side_bow_animation_right;
		break;
}

// Use Attack only once
if (image_index >= 7 and attacked == false)
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
		yy = y+27;
	}
	else if (face == 0)
	{
		xx = x+16;
		yy = y;
	}
	else if (face == 2)
	{
		xx = x-16;
		yy = y;
	}
	
	/*
	switch (sprite_index)
	{
		case spr_attack_down:
			xx = x;
			yy = y+15;
			break;
		
		case spr_attack_right:
			xx = x+16;
			yy = y;
			break;
			
		case spr_attack_up:
			xx = x;
			yy = y-12;
			break;
		
		case spr_attack_left:
			xx = x-16;
			yy = y;
			break;
	}*/
	
	///Create Arrow, Make it so it doesn't hit player, Make it so it only attack once
	var damage = instance_create_depth(xx,yy,depth,obj_pil)
	damage.creator = id;
	attacked = true;
}
if sprite_index == 8{
	if !audio_is_playing(snd_bowpull){
		audio_play_sound(snd_bowpull,0,false)
	}
}