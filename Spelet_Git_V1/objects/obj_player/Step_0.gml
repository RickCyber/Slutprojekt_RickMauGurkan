 /// @description Insert description here
// You can write your code in this editor
event_inherited();
script_execute(state);

phy_fixed_rotation = true;

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