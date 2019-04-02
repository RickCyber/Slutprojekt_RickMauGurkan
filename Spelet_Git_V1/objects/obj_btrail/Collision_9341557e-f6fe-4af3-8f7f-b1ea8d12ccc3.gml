/// @description Insert description here
// You can write your code in this editor
if (obj_player.state != scr_dash_state){
	for (var i =0; i < 1; i++){
		obj_player.hp -= 5;
	}
	instance_destroy()
}
