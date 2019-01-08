///scr_zombie_wander
scr_zombie_check_for_player();

image_speed = .25;

//Get random location to wander to
var dir = point_direction(x,y,targetx,targety);
var hspd = lengthdir_x(spd,dir); 
var vspd = lengthdir_y(spd,dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;