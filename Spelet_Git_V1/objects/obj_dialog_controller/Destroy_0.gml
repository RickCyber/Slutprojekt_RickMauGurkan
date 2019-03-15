/// @description Insert description here
// You can write your code in this editor



if (room == rm_church and obj_player.dash == false)
{
	if !(instance_exists(obj_dash_item))
	{
		instance_create_depth(328,400,depth,obj_dash_item);
	}
}

if (room == rm_level_3_1 and obj_player.hook == false)
{
	if !(instance_exists(obj_hook_item))
	{
		instance_create_depth(440,384,depth,obj_hook_item);
	}
}

if (room == rm_church and obj_player.amulet1 == true and instance_exists(obj_villager))
{
	obj_villager.spd = -1;
}
else if (room == rm_church and obj_player.amulet1 == true and !instance_exists(obj_villager))
{
	obj_player.alarm[8] = 1;
	obj_player.alarm[1] = room_speed;
}
else
{
	obj_player.state = scr_move_state;
}

if (room == rm_final_1)
{
	obj_villager.spd = -1;
}

if (room == rm_boss_3)
{
	obj_boss3.sleep = false
	obj_boss3.image_speed = 1
	obj_boss3.fas = 1
}

if (room == rm_final_boss)
{
	obj_boss3.sleep = false
	obj_boss3.image_speed = 1
	obj_boss3.fas = 1
}

if (room == rm_final_2 and obj_player.secondspeach == true)
{
	game_restart();
}
else if (room == rm_final_2 and obj_player.secondspeach == false)
{
	obj_player.secondspeach = true;
}

if (room == rm_intro and obj_player.amulet1 == true)
{
	obj_player.x = 254;
	obj_player.y = 282;
	room = rm3;
}