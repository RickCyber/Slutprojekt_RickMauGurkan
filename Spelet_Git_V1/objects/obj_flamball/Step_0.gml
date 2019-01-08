/// @description Insert description here
// You can write your code in this editor
phy_speed_x = lengthdir_x(speedb,dir)
phy_speed_y = lengthdir_y(speedb,dir)
depth = -y
speedb += .3

with (instance_create_depth(x,y,0,obj_btrail))
{
	speed = 1;
	vspeed *= 0.5;
}