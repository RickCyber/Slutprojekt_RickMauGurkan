/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_boss and fas == 1){
	instance_create_depth(obj_boss.x, obj_boss.y, 1, obj_flamball)
	alarm[0] = 100;
}

if (sprite_index == spr_boss and fas == 2){
	ShootFireball();
	alarm[0] = 60;
}

if (sprite_index == spr_boss and fas == 3){
	instance_create_depth(obj_boss.x, obj_boss.y, 1, obj_flamball)
	if (random_range(0,20) < 11){
	alarm[0] = 60;
	}
	else{
	alarm[1] = 60;
	}
}