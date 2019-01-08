/// @description Insert description here
// You can write your code in this editor
if (obj_boss2.res == false)
{
	obj_boss2.hp -= 10;
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
with other
{
	instance_destroy();
}