/// @description Insert description here
// You can write your code in this editor

//Rotate instance based upon direction
if (bhspd < 0 and bvspd == 0)
{
    phy_rotation = -90;
}
else if (bhspd > 0 and bvspd == 0)
{
    phy_rotation = 90;
}
else if (bhspd == 0 and bvspd > 0)
{
    phy_rotation = 180;
}
else
{
    phy_rotation = 0;
}

//Move arrow
phy_position_x += bhspd;
phy_position_y += bvspd;

depth = -y -2