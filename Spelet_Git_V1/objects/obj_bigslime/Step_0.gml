/// @description Insert description here
// You can write your code in this editor
event_inherited();
script_execute(state);

//Get speed based on direction
dir = point_direction(x,y,targetx,targety);
hspd = lengthdir_x(spd,dir); 
vspd = lengthdir_y(spd,dir);

//Fall down pit
if (physics_test_overlap(x,y,0,obj_pit) and tick == false)
{
	state = scr_fall_state;
	alarm[0] = room_speed/1;
	tick = true;
}

//Change Sprite
scr_get_face();

switch (face)
{
	case 0:
		sprite_index = spr_player_right;
		break;
	
	case 1:
		sprite_index = spr_player_up;
		break;
		
	case 2:
		sprite_index = spr_player_left;
		break;
		
	case 3:
		sprite_index = spr_player_down;
		break;
}

if (hp == 0)
{
	instance_create_depth(x+25,y,0,obj_slime);
	instance_create_depth(x-25,y,0,obj_slime);
}