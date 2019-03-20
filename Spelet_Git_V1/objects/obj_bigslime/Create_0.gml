/// @description Insert description here
// You can write your code in this editor
event_inherited();
state = scr_slime_idle;
alarm[2] = room_speed*irandom_range(2,5);
image_blend = c_lime;
image_speed = .25;
tick = false;
attacked = false;
index = false;
face = 0;
spd = .5;
sight = 100;
targetx = 0;
targety = 0;
dir = 0;
hspd = 0;
vspd = 0;
damage = 15;

image_xscale = 1.5;
image_yscale = 1.5;