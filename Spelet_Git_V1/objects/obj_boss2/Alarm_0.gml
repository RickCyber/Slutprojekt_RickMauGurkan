/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_boss2_down and fas == 1 or sprite_index == spr_boss2_up and fas == 1){
	instance_create_depth(obj_boss2.x, obj_boss2.y, 1, obj_prutt)
	alarm[0] = 200;
}

if (sprite_index == spr_boss2_down and fas == 2 or sprite_index == spr_boss2_up and fas == 2){
	instance_create_depth(obj_boss2.x, obj_boss2.y, 1, obj_studdsboll)
	alarm[0] = 120;
}

if (sprite_index == spr_boss2_down and fas == 3 or sprite_index == spr_boss2_up and fas == 3){
    instance_create_depth(obj_boss2.x, obj_boss2.y, 1, obj_prutt);
    if (random_range(0,20) < 11){
    alarm[0] = 80;
    }
    else{
    alarm[1] = 80;
    }
}