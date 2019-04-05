/// @description Insert description here
// You can write your code in this editor
damage = 5;
knockback = 100;
creator = noone;

bspd = 5;

//Get direction based upon player direction
if (obj_player.face == 0)
{
    var sdir = point_direction(0,0,1,0)
}
else if (obj_player.face == 1)
{
    var sdir = point_direction(0,0,0,-1)
}
else if (obj_player.face == 2)
{
    var sdir = point_direction(0,0,-1,0)
}
else if (obj_player.face == 3)
{
    var sdir = point_direction(0,0,0,1)
}

//Set speed based upon speed and direction
bhspd = lengthdir_x(bspd, sdir);
bvspd = lengthdir_y(bspd, sdir);