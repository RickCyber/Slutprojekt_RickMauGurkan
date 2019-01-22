/// @description Insert description here
// You can write your code in this editor

image_speed = 1.5;
depth = 20;
tick = true;
reset = true;

if (obj_boss3.flamepos == 2)
{
    phy_rotation = 90;
}
else if (obj_boss3.flamepos == 1)
{
    phy_rotation = 0;
}
else if (obj_boss3.flamepos == 3)
{
    phy_rotation = -90;
}
else if (obj_boss3.flamepos == 0)
{
    phy_rotation = 180;
}