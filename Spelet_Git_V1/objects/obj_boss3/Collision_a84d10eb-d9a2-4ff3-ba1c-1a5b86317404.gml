/// @description Insert description here
// You can write your code in this editor
if hittable == true and res == false {
	hp -= 10
	obj_player.state = scr_move_state;
	obj_player.attacked = false;
	instance_destroy(other);
}
else
{
	obj_player.state = scr_move_state;
	obj_player.attacked = false;
	instance_destroy(other);
}