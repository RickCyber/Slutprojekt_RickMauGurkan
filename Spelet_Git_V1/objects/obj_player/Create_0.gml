/// @description Player Create
// You can write your code in this editor
event_inherited();
hp = 100;
spd = 2;
hspd = 0;
vspd = 0;
xaxis = 0;
yaxis = 0;
len = 0;
dir = 0;
attack = 1;
attacked = false;
fall = false;
damaged = false;
face = 0;
dash = false;
hook = false;
ice = false;
move = true;
magicbar = 200;
itembar = 200;
money = 0;
hit = 0;
image_speed = .5;
scr_get_input();
state = scr_move_state;

//Randomize seed
randomize();