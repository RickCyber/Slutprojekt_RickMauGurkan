/// @description Damage Player
// You can write your code in this editor

//If conditions are right
if (state != scr_slime_stall and obj_player.state != scr_dash_state and state != scr_freeze_state and obj_player.state != scr_fall_state)
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
		case spr_player_down:
			sprite_index = spr_attack_down;
			break;
		
		case spr_slime_right:
			sprite_index = spr_slime_attack_right;
			break;
			
		case spr_player_up:
			sprite_index = spr_attack_up;
			break;
		
		case spr_slime_left:
			sprite_index = spr_slime_attack_left;
			break;
	}
	
	//Create damage only once
	if (image_index >= 6 and attacked == false)
	{
		var dir = point_direction(other.x, other.y, x, y);
		var xdir = lengthdir_x(1,dir);
		var ydir = lengthdir_y(1,dir);
		var damage = instance_create_depth(other.x-xdir, other.y-ydir, 0, obj_slimeslicebig);
		damage.creator = id;
		damage.knockback = 250;
		attacked = true;
		state = scr_slime_stall;
		alarm[3] = room_speed*1.3;
	}
}