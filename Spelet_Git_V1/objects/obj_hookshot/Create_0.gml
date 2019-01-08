/// @description Insert description here
// You can write your code in this editor

phy_fixed_rotation = true;

bspd = 8;
damage = 5;
knockback = 500;

//Get direction based upon player direction
if (obj_player.sprite_index == spr_attack_right)
{
    var sdir = point_direction(0,0,1,0)
}
else if (obj_player.sprite_index == spr_attack_up)
{
    var sdir = point_direction(0,0,0,-1)
}
else if (obj_player.sprite_index == spr_attack_left)
{
    var sdir = point_direction(0,0,-1,0)
}
else if (obj_player.sprite_index == spr_attack_down)
{
    var sdir = point_direction(0,0,0,1)
}

//Set speed based upon speed and direction
bhspd = lengthdir_x(bspd, sdir);
bvspd = lengthdir_y(bspd, sdir);