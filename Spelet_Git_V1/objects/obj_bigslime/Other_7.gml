/// @description Reset after Attack
// You can write your code in this editor
if (sprite_index == spr_attack_down or sprite_index == spr_attack_up or sprite_index == spr_slime_attack_right or sprite_index == spr_slime_attack_left)
{
	state = scr_slime_stall;
	alarm[3] = room_speed;
}