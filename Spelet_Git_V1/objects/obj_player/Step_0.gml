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
}
//Fall if on pitwater
if (physics_test_overlap(x,y,0,obj_pit_water))
{
	if (state != scr_dash_state and state != scr_hookshot_state and fall == false)
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
}
if (hit >= 10){
	game_restart()
}

if keyboard_check(ord("R")) room_restart()