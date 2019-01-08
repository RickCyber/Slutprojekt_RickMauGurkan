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
	case spr_player_down:
		sprite_index = spr_attack_down;
		break;
		
	case spr_player_right:
		sprite_index = spr_attack_right;
		break;
			
	case spr_player_up:
		sprite_index = spr_attack_up;
		break;
		
	case spr_player_left:
		sprite_index = spr_attack_left;
		break;
}

// Use Attack only once
if (image_index >= 2 and attacked == false)
{
	//Get distance based upon which direction
	var xx = 0;
	var yy = 0;
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
	}
	
	///Create Attack, Make it so it doesn't hit player, Make it so it only attack once
	var damage = instance_create_depth(xx,yy,depth,obj_sword)
	damage.creator = id;
	attacked = true;
}
