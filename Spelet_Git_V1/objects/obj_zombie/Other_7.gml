/// @description Reset after Attack
// You can write your code in this editor
if (sprite_index == spr_zombie_side_Animation_Walk_Attack or sprite_index == spr_zombie_side_Animation_Walk_Attack_left or sprite_index == spr_attack_right or sprite_index == spr_attack_left)
{
	state = scr_zombie_stall;
	alarm[3] = room_speed;
}