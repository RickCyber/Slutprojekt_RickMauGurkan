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
if (itembar < 100)
{
	itembar += 1;
}

if (magicbar < 100)
{
	magicbar += 1;
}

if (itembar >= 100)
{
	itembar = 100;
}

if (magicbar >= 100)
{
	magicbar = 100;
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

if keyboard_check_pressed(ord("T")) and keyboard_check_pressed(ord("B"))
{
	cheat = get_string("Enter the UwU:","")
	if (cheat == "Room")
	{
		room = rm8;
	}
	else if (cheat == "Speed")
	{
		wroom = true;
	}
	else if (cheat == "Slow")
	{
		wroom = false;
	}
	else if (cheat == "Rick")
	{
		amulet1 = true;
		dash = true;
		ice = true;
		hook = true;
	}
	else if (cheat == "Restart")
	{
		game_restart();
	}
	else if (cheat == "restart")
	{
		room_restart();
	}
	else if (cheat == "UwU")
	{
		if (owo == false)
		{
			owo = true;
		}
		else
		{
			owo = false;
		}
	}
}


if (wroom == true)
{
	spd = 10;
}

if (owo == true)
{
	sprite_index = spr_PlayerUwU;
}

if (room == rm_village)
{
	churchfall = false;
	shake = 0;
}

if (room == rm8 and uwu == false)
{
	phy_position_x = 528;
	phy_position_y = 400;
	uwu = true;
}
else if (room != rm8)
{
	uwu = false;
}

if (room == rm_village and first == false)
{
	first = true;
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
	scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_villager_intro_text);
}

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
if room == rm_boss_3 or room == rm_final_boss or room == rm_final_1 or room == rm_final_2 or room == rm3 or room == rm6{
	if audio_is_playing(snd_bgm){
		audio_stop_sound(snd_bgm)
	}
	if !audio_is_playing(snd_boss_bm){
		audio_play_sound(snd_boss_bm,0,false)
	}
	if audio_is_playing(snd_vilage_optional){
		audio_stop_sound(snd_vilage_optional)
	}
	if audio_is_playing(snd_dream_theme){
		audio_stop_sound(snd_dream_theme)
	}
}
else if room == rm_village{
	if audio_is_playing(snd_bgm){
		audio_stop_sound(snd_bgm)
	}
	if audio_is_playing(snd_boss_bm){
		audio_stop_sound(snd_boss_bm)
	}
	if !audio_is_playing(snd_vilage_optional){
		audio_play_sound(snd_vilage_optional,1,false)
	}
	if audio_is_playing(snd_flameatt){
		audio_stop_sound(snd_flameatt)
	}
}
else if room == rm8{
	if audio_is_playing(snd_bgm){
		audio_stop_sound(snd_bgm)
	}
	if audio_is_playing(snd_boss_bm){
		audio_stop_sound(snd_boss_bm)
	}
	if audio_is_playing(snd_vilage_optional){
		audio_stop_sound(snd_vilage_optional)
	}
	if !audio_is_playing(snd_wndrwll){
		audio_play_sound(snd_wndrwll,1,false)
	}
}
else{
	if audio_is_playing(snd_boss_bm){
		audio_stop_sound(snd_boss_bm)
	}
	if audio_is_playing(snd_vilage_optional){
		audio_stop_sound(snd_vilage_optional)
	}
	if !audio_is_playing(snd_bgm){
		audio_play_sound(snd_bgm,1,false)
	}
}