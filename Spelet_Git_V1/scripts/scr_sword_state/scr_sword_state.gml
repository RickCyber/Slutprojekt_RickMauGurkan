///scr_sword_state
scr_get_input();

spd = 1.25;

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
}

//Get Speed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

image_speed = 1;

// Change to Attack sprite based on direction
switch (sprite_index)
{
	case spr_big_boy_side_bow_animation_left:
		sprite_index = spr_big_boy_side_bow_attack_animation_left;
		break;
		
	case spr_big_boy_side_bow_animation_right:
		sprite_index = spr_big_boy_side_bow_attack_animation_right;
		break;
			
	case spr_big_boy_side_sword_animation_left:
		sprite_index = spr_big_boy_side_sword_attack_animation_left;
		break;
		
	case spr_big_boy_side_sword_animation_right:
		sprite_index = spr_big_boy_side_sword_attack_animation_right;
		break;
}

// Use Attack only once
if (image_index >= 2 and attacked == false)
{
	//Get distance based upon which direction
	var xx = 0;
	var yy = 0;
	
	if (face == 1)
	{
		xx = x;
		yy = y-14;
	}
	else if (face == 3)
	{
		xx = x;
			yy = y+18;
	}
	else if (face == 0)
	{
		xx = x+16;
		yy = y+2;
	}
	else if (face == 2)
	{
		xx = x-16;
		yy = y+2;
	}
	/*
	switch (sprite_index)
	{
		case spr_attack_down:
			xx = x;
			yy = y+18;
			break;
		
		case spr_attack_right:
			xx = x+16;
			yy = y+2;
			break;
			
		case spr_attack_up:
			xx = x;
			yy = y-14;
			break;
		
		case spr_attack_left:
			xx = x-16;
			yy = y+2;
			break;
	}*/
	
	///Create Attack, Make it so it doesn't hit player, Make it so it only attack once
	var damage = instance_create_depth(xx,yy,depth,obj_sword)
	damage.creator = id;
	attacked = true;
}
