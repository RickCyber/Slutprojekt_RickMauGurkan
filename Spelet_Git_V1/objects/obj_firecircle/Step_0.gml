/// @description Insert description here
// You can write your code in this editor
if (bhspd < 0 and bvspd == 0)
{
    phy_rotation = 180;
}
else if (bhspd > 0 and bvspd == 0)
{
    phy_rotation = 0;
}
else if (bhspd == 0 and bvspd > 0)
{
    phy_rotation = 90;
}
else if (bhspd == 0 and bvspd < 0)
{
    phy_rotation = -90;
}
else if (bhspd < 0 and bvspd < 0)
{
    phy_rotation = -135;
}
else if (bhspd < 0 and bvspd > 0)
{
    phy_rotation = 135;
}
else if (bhspd > 0 and bvspd > 0)
{
    phy_rotation = 45;
}
else if (bhspd > 0 and bvspd < 0)
{
    phy_rotation = -45;
}

//Move arrow
phy_position_x += bhspd;
phy_position_y += bvspd;