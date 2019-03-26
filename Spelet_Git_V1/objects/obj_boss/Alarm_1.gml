/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_boss and fas == 3){
	ShootFireball();
	if (random_range(0,20) < 11){
	alarm[1] = 60;
	}
	else{
	alarm[0] = 60;
	}
}