/// @description Insert description here
// You can write your code in this editor
event_inherited();
state = scr_slime_stall;
alarm[3] = room_speed*1.3;
alarm[2] = room_speed*irandom_range(2,5);
image_blend = c_lime;
image_speed = .25;
tick = false;
attacked = false;
face = 0;
spd = 1.25;
sight = 100;
targetx = 0;
targety = 0;
dir = 0;
hspd = 0;
vspd = 0;
hp = 5;
damage = 5;

image_xscale = .75;
image_yscale = .75;