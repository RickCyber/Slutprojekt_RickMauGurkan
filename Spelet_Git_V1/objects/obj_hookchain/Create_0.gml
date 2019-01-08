/// @description Insert description here
// You can write your code in this editor
//Rotates chain based on direction of hook
if instance_exists(obj_hookshot)
{
	if (obj_hookshot.bhspd < 0 and obj_hookshot.bvspd == 0)
	{
	    phy_rotation = -90;
	}
	else if (obj_hookshot.bhspd > 0 and obj_hookshot.bvspd == 0)
	{
	    phy_rotation = 90;
	}
	else if (obj_hookshot.bhspd == 0 and obj_hookshot.bvspd > 0)
	{
	    phy_rotation = 180;
	}
	else
	{
	    phy_rotation = 0;
	}
}