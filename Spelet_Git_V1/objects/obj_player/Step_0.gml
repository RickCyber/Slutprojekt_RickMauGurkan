 /// @description Insert description here
// You can write your code in this editor
event_inherited();
script_execute(state);

phy_fixed_rotation = true;

if (state != scr_fall_state)
{
	phy_rotation = 0;
}

//Reload Item and Magicbars
if (itembar < 200)
{
	itembar += 1;
}

if (magicbar < 200)
{
	magicbar += 1;
}

//Fall if on pit
if (physics_test_overlap(x,y,0,obj_pit))
{
	if (state != scr_dash_state and state != scr_hookshot_state and fall == false)
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
}
//Fall if on pitwater
if (physics_test_overlap(x,y,0,obj_pit_water))
{
	if (state != scr_dash_state and state != scr_hookshot_state and fall == false)
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
}

if physics_test_overlap(x,y,0,obj_flamethrower)
{
	if (obj_flamethrower.reset == true)
	{
		obj_player.hp -= 5;
		obj_flamethrower.reset = false;
		obj_flamethrower.alarm[1] = 50
	}
}

if (hit >= 10){
	game_restart()
}

if keyboard_check(ord("R")) room_restart()

if (room == rm_final_1 and churchfall == false)
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
	scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_priest_third_text);
	churchfall = true;
	phy_position_x = 344;
	phy_position_y = 472;
}

if (room == rm_final_2 and y < 460 and finalspeach == false)
{
	finalspeach = true;
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
	if (amulet2 == true)
	{
		scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_priest_fifth_text);
	}
	else
	{
		scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_priest_fourth_text);
	}
}