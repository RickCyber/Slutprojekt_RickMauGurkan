/// @description Insert description here
// You can write your code in this editor

x += (obj_player.x - x) * .1;
y += (obj_player.y - y) * .1;

if obj_boss3.image_alpha >= 0.03{
	x = obj_boss3.x
	y = obj_boss3.y
}
if obj_boss3.image_alpha >= 0.483{
	image_alpha *= 0.7 
}
else{
	image_alpha *= 1.1 
}
if obj_boss3.image_alpha >= 0.983{
	instance_destroy()
}

depth = obj_player.depth + 10
