/// @description Player Create
// You can write your code in this editor
event_inherited();
draw_set_colour(c_white)
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
amulet1 = false;
amulet2 = false;
amulet3 = false;
move = true;
magicbar = 100;
itembar = 100;
money = 0;
hit = 0;
churchfall = false;
finalspeach = false;
secondspeach = false;
shake = 0;
what = false;
faller = false;
first = false;
image_speed = .5;
scr_get_input();
state = scr_move_state;

//Randomize seed
randomize();

alarm[9] = 3;