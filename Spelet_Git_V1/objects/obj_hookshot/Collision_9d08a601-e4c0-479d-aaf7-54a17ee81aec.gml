/// @description Insert description here
// You can write your code in this editor
//If wall hit, destroy hookshot and reset to move state
obj_player.state = scr_move_state;
obj_player.attacked = false;
instance_destroy();