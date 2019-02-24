///scr_respawn_state ÄNVÄNDS INTE

// Take damage
if (damaged == false)
{
	hp -= 10;
	damaged = true;
}


// Respawn at location in specific room
if (room == rm1)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 200;
	phy_position_y = 200;
	damaged = false;
	state = scr_move_state;
}

if (room == room2)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 900;
	phy_position_y = 100;
	damaged = false;
	state = scr_move_state;
}

if (room == rm3)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 200;
	phy_position_y = 200;
	damaged = false;
	state = scr_move_state;
}

if (room == room4)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 150;
	phy_position_y = 150;
	damaged = false;
	state = scr_move_state;
}

if (room == rm5)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 200;
	phy_position_y = 200;
	damaged = false;
	state = scr_move_state;
}



// Respawn at location based upon how you fell
/*
if (hspd < 0 and vspd == 0)
{
	instance_create_depth(x+60,y,depth,obj_player)
}
else if (hspd > 0 and vspd == 0)
{
	instance_create_depth(x-60,y,depth,obj_player)
}
else if (hspd == 0 and vspd < 0)
{
	instance_create_depth(x,y+60,depth,obj_player)
}
else if (hspd == 0 and vspd > 0)
{
	instance_create_depth(x,y-60,depth,obj_player)
}
else if (hspd < 0 and vspd < 0)
{
	instance_create_depth(x,y+60,depth,obj_player)
}
else if (hspd > 0 and vspd > 0)
{
	instance_create_depth(x,y60,depth,obj_player)
}
else if (hspd > 0 and vspd < 0)
{
	instance_create_depth(x,y+60,depth,obj_player)
}
else if (hspd < 0 and vspd > 0)
{
	instance_create_depth(x+40,y+60,depth,obj_player)
}
else if (hspd == 0 and vspd == 0)
{
	instance_create_depth(x+60,y,depth,obj_player)
}
*/
