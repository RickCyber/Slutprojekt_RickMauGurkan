/// @description Fall State to Respawn
// You can write your code in this editor
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

if (room == rm_intro)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 360;
	phy_position_y = 216;
	damaged = false;
	state = scr_move_state;
}

if (room == rm_level_3_1)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 192;
	phy_position_y = 488;
	damaged = false;
	state = scr_move_state;
}

if (room == rm_level_3_2)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 248;
	phy_position_y = 224;
	damaged = false;
	state = scr_move_state;
}

if (room == rm_level_3_3)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 552;
	phy_position_y = 700;
	damaged = false;
	state = scr_move_state;
}

if (room == rm_boss_3)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 544;
	phy_position_y = 480;
	damaged = false;
	state = scr_move_state;
}

if (room == rm_final_boss)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 544;
	phy_position_y = 384;
	damaged = false;
	state = scr_move_state;
}

if (room == rm_church)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	damaged = false;
	state = scr_move_state;
	room = rm_final_1;
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

if (room == rm4)
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

if (room == rm6)
{
	phy_rotation = 0;
	image_xscale = 1;
	image_yscale = 1;
	phy_position_x = 200;
	phy_position_y = 200;
	damaged = false;
	state = scr_move_state;
}


spd = 2;
alarm[4] = 10;