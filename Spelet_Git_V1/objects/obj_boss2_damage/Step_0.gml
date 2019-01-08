/// @description Sitt bakom bossen
// You can write your code in this editor
if (obj_boss2.hspd > 0 and obj_boss2.vspd > 0)
{
	phy_position_x = obj_boss2.x-20;
	phy_position_y = obj_boss2.y-55;
}
else if (obj_boss2.hspd < 0 and obj_boss2.vspd > 0)
{
	phy_position_x = obj_boss2.x+20;
	phy_position_y = obj_boss2.y-55;
}
else if (obj_boss2.hspd > 0 and obj_boss2.vspd < 0)
{
	phy_position_x = obj_boss2.x-20;
	phy_position_y = obj_boss2.y+55;
}
else if (obj_boss2.hspd < 0 and obj_boss2.vspd < 0)
{
	phy_position_x = obj_boss2.x+20;
	phy_position_y = obj_boss2.y+55;
}