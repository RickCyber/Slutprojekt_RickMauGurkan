/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_bossss_fed){
	hp -= 25;
}

if (obj_player.move == true)
{
	obj_player.state = scr_move_state;
}
else
{
	obj_player.state = scr_poison_state;
}
obj_player.attacked = false;

with (obj_hookshot){
	instance_destroy()
}