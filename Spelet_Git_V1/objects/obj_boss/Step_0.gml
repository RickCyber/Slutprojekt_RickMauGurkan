/// @description
//När alla triggerna är nere gör koden under
if (global.tdeactive == 5 and sprite_index == spr_boss){
	sprite_index = spr_boss_fall
	image_index = 0
	image_speed = .6
}
//Resättar speeden, samt regenar hp
if (sprite_index == spr_boss){
	image_speed = 1
	hp += .02
}
//When Boss is on 0Hp Do this
if (hp == 0 and fas != 0){
	sprite_index = spr_boss_res
	image_speed = .2
	image_index = 0
	fas +=1
}
if (sprite_index == spr_boss_res){
	hp += .7
}

if (hp <= 0){
	hp = 0;
}
else if (hp >= 100){
	hp = 100;
}
if (fas == 4){
	fas = 0;
	sprite_index = spr_boss_ded
	image_speed = 0
	instance_create_depth(544,336,depth,obj_teleport);
}