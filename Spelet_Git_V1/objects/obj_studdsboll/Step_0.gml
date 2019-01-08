/// @description Insert description here
// You can write your code in this editor
dir = point_direction(0,0,xdir,ydir);

hspd = lengthdir_x(spd,dir);
vspd = lengthdir_y(spd,dir);

phy_position_x += hspd;
phy_position_y += vspd;

if (bounce == 5)
{
	instance_destroy();
}