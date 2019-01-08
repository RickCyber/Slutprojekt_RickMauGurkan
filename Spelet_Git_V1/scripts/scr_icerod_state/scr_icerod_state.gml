///scr_icerod_state

scr_get_input();

image_speed = .75;

// Change to icerod sprite based on direction
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

// Use icerod only once
if (attacked == false)
{
	//Get distance based upon which direction
	var xx = 0;
	var yy = 0;
	switch (sprite_index)
	{
		case spr_attack_down:
			xx = x;
			yy = y+12;
			break;
		
		case spr_attack_right:
			xx = x+16;
			yy = y+2;
			break;
			
		case spr_attack_up:
			xx = x;
			yy = y-12;
			break;
		
		case spr_attack_left:
			xx = x-16;
			yy = y+2;
			break;
	}
	
	///Create Icerod, Make it so it doesn't hit player, Make it so it only do it once
	var damage = instance_create_depth(xx,yy,depth,obj_ice)
	damage.creator = id;
	attacked = true;
}