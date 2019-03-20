/// @description Damage Player
// You can write your code in this editor

//If conditions are right
if (state != scr_zombie_stall and obj_player.state != scr_dash_state and state != scr_freeze_state and obj_player.state != scr_fall_state)
{
	image_speed = 1;
	if (index == false)
	{
		image_index = 0;
		index = true;
	}
	
	//Change to attack sprite based on direction
	switch (sprite_index)
	{
		case spr_zombie_side_Animation_Walk:
			sprite_index = spr_zombie_side_Animation_Walk_Attack;
			break;
		
		case spr_zombie_side_Animation_Walk_left:
			sprite_index = spr_zombie_side_Animation_Walk_Attack_left;
			break;
			
		case spr_player_up:
			sprite_index = spr_attack_up;
			break;
		
		case spr_player_left:
			sprite_index = spr_attack_left;
			break;
	}
	
	//Create damage only once
	if (image_index >= 4 and attacked == false)
	{
		var dir = point_direction(other.x, other.y, x, y);
		var xdir = lengthdir_x(1,dir);
		var ydir = lengthdir_y(1,dir);
		var damage = instance_create_depth(other.x-xdir, other.y-ydir, 0, obj_zombiebite)
		damage.creator = id;
		damage.knockback = 200;
		attacked = true;
		state = scr_zombie_stall;
		alarm[3] = room_speed*1.3;
	}
}