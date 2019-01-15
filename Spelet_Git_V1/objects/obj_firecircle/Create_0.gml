/// @description Insert description here
// You can write your code in this editor
damage = 5;
knockback = 10;
creator = noone;

bspd = 5;

//Get direction based upon where  direction
if (obj_boss3.firecircle1 != true)
{
	if (x > obj_boss3.x and y = obj_boss3.y)
	{
	    var sdir = point_direction(0,0,1,0)
	}
	else if (x = obj_boss3.x and y < obj_boss3.y)
	{
	    var sdir = point_direction(0,0,0,-1)
	}
	else if (x < obj_boss3.x and y = obj_boss3.y)
	{
	    var sdir = point_direction(0,0,-1,0)
	}
	else if (x = obj_boss3.x and y > obj_boss3.y)
	{
	    var sdir = point_direction(0,0,0,1)
	}
	else if (x > obj_boss3.x and y > obj_boss3.y)
	{
	    var sdir = point_direction(0,0,1,1)
	}
	else if (x < obj_boss3.x and y < obj_boss3.y)
	{
	    var sdir = point_direction(0,0,-1,-1)
	}
	else if (x < obj_boss3.x and y > obj_boss3.y)
	{
	    var sdir = point_direction(0,0,-1,1)
	}
	else if (x > obj_boss3.x and y < obj_boss3.y)
	{
	    var sdir = point_direction(0,0,1,-1)
	}
}
else
{
	if (x > obj_boss3.x and y > obj_boss3.y and y > obj_boss3.y+40)
	{
	    var sdir = point_direction(0,0,1,1.5)
	}
	else if (x < obj_boss3.x and y < obj_boss3.y and y < obj_boss3.y+40)
	{
	    var sdir = point_direction(0,0,-1,-1.5)
	}
	else if (x < obj_boss3.x and y > obj_boss3.y and y > obj_boss3.y+40)
	{
	    var sdir = point_direction(0,0,-1,1.5)
	}
	else if (x > obj_boss3.x and y < obj_boss3.y and y < obj_boss3.y+40)
	{
	    var sdir = point_direction(0,0,1,-1.5)
	}
	else if (x > obj_boss3.x and y > obj_boss3.y and y < obj_boss3.y+40)
	{
	    var sdir = point_direction(0,0,1,0.5)
	}
	else if (x < obj_boss3.x and y < obj_boss3.y and y > obj_boss3.y+40)
	{
	    var sdir = point_direction(0,0,-1,-0.5)
	}
	else if (x < obj_boss3.x and y > obj_boss3.y and y > obj_boss3.y+40)
	{
	    var sdir = point_direction(0,0,-1,0.5)
	}
	else if (x > obj_boss3.x and y < obj_boss3.y and y < obj_boss3.y+40)
	{
	    var sdir = point_direction(0,0,1,-0.5)
	}
}


//Set speed based upon speed and direction
bhspd = lengthdir_x(bspd, sdir);
bvspd = lengthdir_y(bspd, sdir);

if (obj_boss3.firecircle1 != true)
{
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
}
else
{
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
}