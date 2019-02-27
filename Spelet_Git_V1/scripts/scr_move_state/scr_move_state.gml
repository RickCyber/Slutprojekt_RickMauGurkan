///scr_move_state
scr_get_input();

// Activate Dash-ability if contitions true
if (dash_key and dash == true and itembar >= 110 and len != 0)
{
	image_index = 0;
	state = scr_dash_state;
	alarm[0] = room_speed/4.5;
	itembar -= 100;
}

// Activate Hook-ability if contitions true
if (!physics_test_overlap(x,y,0,obj_hookpole))
{
	if (hook_key and hook == true and itembar >= 100)
	{
		image_index = 0;
		state = scr_hookshot_state;
		itembar -= 100;
	}
}

// Activate Icerod-ability if contitions true
if (ice_key and ice == true and magicbar >= 110)
{
	image_index = 0;
	state = scr_icerod_state;
	magicbar -= 100;
}

// Activate Attack
if (attack_key)
{
	// Check which attack
	if (attack == 1)
	{
		image_index = 0;
		state = scr_sword_state;
	}
	else if (attack == 2 and magicbar >= 110)
	{
		image_index = 0;
		state = scr_bow_state;
		magicbar -= 100;
	}
}

// Switch between Sword and Bow attack
if (switch_key)
{
	if (attack == 1)
	{
		attack = 2;
	}
	else if (attack == 2)
	{
		attack = 1;
	}
}

//Get Direction
dir = point_direction(0,0,xaxis,yaxis)

//Get Length

if (xaxis == 0 and yaxis == 0)
{
	len = 0;
}
else
{
	len = spd;
	scr_get_face();
}

//Get Speed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control sprite
// Switch sprite
image_speed = .75;
if (len == 0)
{
	switch (sprite_index)
	{
		case spr_big_boy_side_bow_animation_left:
			sprite_index = spr_big_boy_side_bow_breath_left;
			break;
		
		case spr_big_boy_side_bow_animation_right:
			sprite_index = spr_big_boy_side_bow_breath_right;
			break;
			
		case spr_big_boy_side_sword_animation_left:
			sprite_index = spr_big_boy_side_sword_breath_left;
			break;
		
		case spr_big_boy_side_sword_animation_right:
			sprite_index = spr_big_boy_side_sword_breath_right;
			break;
	}
}
else if (attack == 1 and len != 0)
{
	switch (face)
	{
		case 0:
			sprite_index = spr_big_boy_side_sword_animation_right;
			break;
		
		case 2:
			sprite_index = spr_big_boy_side_sword_animation_left;
			break;
		
		case 1:
			if (sprite_index == spr_big_boy_side_sword_breath_left)
			{
				sprite_index = spr_big_boy_side_sword_animation_left;
			}
			else
			{
				sprite_index = spr_big_boy_side_sword_animation_right;
			}
			break;
		
		case 3:
			if (sprite_index == spr_big_boy_side_sword_breath_left)
			{
				sprite_index = spr_big_boy_side_sword_animation_left;
			}
			else
			{
				sprite_index = spr_big_boy_side_sword_animation_right;
			}
			break;
	}
}
else if (attack == 2 and len != 0)
{
	switch (face)
	{
		case 0:
			sprite_index = spr_big_boy_side_bow_animation_right;
			break;
		
		case 2:
			sprite_index = spr_big_boy_side_bow_animation_left;
			break;
		
		case 1:
			if (sprite_index == spr_big_boy_side_bow_breath_left)
			{
				sprite_index = spr_big_boy_side_bow_animation_left;
			}
			else
			{
				sprite_index = spr_big_boy_side_bow_animation_right;
			}
			break;
		
		case 3:
			if (sprite_index == spr_big_boy_side_bow_breath_left)
			{
				sprite_index = spr_big_boy_side_bow_animation_left;
			}
			else
			{
				sprite_index = spr_big_boy_side_bow_animation_right;
			}
			break;
	}
}