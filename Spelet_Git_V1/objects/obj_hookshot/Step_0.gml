/// @description Insert description here
// You can write your code in this editor


//Rotate instance based upon direction
if (bhspd < 0 and bvspd == 0)
{
    phy_rotation = -90;
	
	//Destroy after distance away from player
	if (x < obj_player.x-160)
	{
		if (obj_player.move == true)
		{
			obj_player.state = scr_move_state;
		}
		else
		{
			obj_player.state = scr_poison_state;
		}
		obj_player.attacked = false;
		if (obj_player.attack == 1)
		{
			switch (obj_player.sprite_index)
			{
				case spr_big_boy_side_hookshot_animation_left:
					obj_player.sprite_index = spr_big_boy_side_sword_animation_left
					break;
			
				case spr_big_boy_side_hookshot_animation_right:
					obj_player.sprite_index = spr_big_boy_side_sword_animation_right
					break;
			}
		}
		else
		{
			switch (obj_player.sprite_index)
			{
				case spr_big_boy_side_hookshot_animation_left:
					obj_player.sprite_index = spr_big_boy_side_bow_animation_left
					break;
			
				case spr_big_boy_side_hookshot_animation_right:
					obj_player.sprite_index = spr_big_boy_side_bow_animation_right
					break;
			}
		}
		instance_destroy();
	}
	
	if physics_test_overlap(x,y,0,obj_hookpole)
	{
		//Drag player towards point hit
		obj_player.phy_position_x -= obj_player.spd*3;
		switch (obj_player.sprite_index)
		{
			case spr_big_boy_side_hookshot_animation_left:
				obj_player.sprite_index = spr_big_boy_side_hookshot_animation_left_flying
				break;
			
			case spr_big_boy_side_hookshot_animation_right:
				obj_player.sprite_index = spr_big_boy_side_hookshot_animation_right_flying
				break;
		}
		//Destroy hook after player is at final distance
		if (x+10 >= obj_player.x)
		{
			if (obj_player.move == true)
			{
				obj_player.state = scr_move_state;
			}
			else
			{
				obj_player.state = scr_poison_state;
			}
			obj_player.attacked = false;
			if (obj_player.attack == 1)
			{
				if (obj_player.sprite_index == spr_big_boy_side_hookshot_animation_left_flying)
				{
					obj_player.sprite_index = spr_big_boy_side_sword_animation_left
				}
				else
				{
					obj_player.sprite_index = spr_big_boy_side_sword_animation_right
				}
			}
			else
			{
			
				if (obj_player.sprite_index == spr_big_boy_side_hookshot_animation_left_flying)
				{
					obj_player.sprite_index = spr_big_boy_side_bow_animation_left
				}
				else
				{
					obj_player.sprite_index = spr_big_boy_side_bow_animation_right
				}
			}
			instance_destroy();
		}
	}
}
else if (bhspd > 0 and bvspd == 0)
{
    phy_rotation = 90;
	
	//Destroy after distance away from player
	if (x > obj_player.x+160)
	{
		if (obj_player.move == true)
		{
			obj_player.state = scr_move_state;
		}
		else
		{
			obj_player.state = scr_poison_state;
		}
		obj_player.attacked = false;
		if (obj_player.attack == 1)
		{
			switch (obj_player.sprite_index)
			{
				case spr_big_boy_side_hookshot_animation_left:
					obj_player.sprite_index = spr_big_boy_side_sword_animation_left
					break;
			
				case spr_big_boy_side_hookshot_animation_right:
					obj_player.sprite_index = spr_big_boy_side_sword_animation_right
					break;
			}
		}
		else
		{
			switch (obj_player.sprite_index)
			{
				case spr_big_boy_side_hookshot_animation_left:
					obj_player.sprite_index = spr_big_boy_side_bow_animation_left
					break;
			
				case spr_big_boy_side_hookshot_animation_right:
					obj_player.sprite_index = spr_big_boy_side_bow_animation_right
					break;
			}
		}
		instance_destroy();
	}
	
	if physics_test_overlap(x,y,0,obj_hookpole)
	{
		//Drag player towards point hit
		obj_player.phy_position_x += obj_player.spd*3;
		switch (obj_player.sprite_index)
		{
			case spr_big_boy_side_hookshot_animation_left:
				obj_player.sprite_index = spr_big_boy_side_hookshot_animation_left_flying
				break;
			
			case spr_big_boy_side_hookshot_animation_right:
				obj_player.sprite_index = spr_big_boy_side_hookshot_animation_right_flying
				break;
		}
		
		//Destroy hook after player is at final distance
		if (x-10 <= obj_player.x)
		{
			if (obj_player.move == true)
			{
				obj_player.state = scr_move_state;
			}
			else
			{
				obj_player.state = scr_poison_state;
			}
			obj_player.attacked = false;
			if (obj_player.attack == 1)
			{
				if (obj_player.sprite_index == spr_big_boy_side_hookshot_animation_left_flying)
				{
					obj_player.sprite_index = spr_big_boy_side_sword_animation_left
				}
				else
				{
					obj_player.sprite_index = spr_big_boy_side_sword_animation_right
				}
			}
			else
			{
			
				if (obj_player.sprite_index == spr_big_boy_side_hookshot_animation_left_flying)
				{
					obj_player.sprite_index = spr_big_boy_side_bow_animation_left
				}
				else
				{
					obj_player.sprite_index = spr_big_boy_side_bow_animation_right
				}
			}
			instance_destroy();
		}
	}
}
else if (bhspd == 0 and bvspd > 0)
{
    phy_rotation = 180;
	
	//Destroy after distance away from player
	if (y > obj_player.y+160)
	{
		if (obj_player.move == true)
		{
			obj_player.state = scr_move_state;
		}
		else
		{
			obj_player.state = scr_poison_state;
		}
		obj_player.attacked = false;
		if (obj_player.attack == 1)
		{
			switch (obj_player.sprite_index)
			{
				case spr_big_boy_side_hookshot_animation_left:
					obj_player.sprite_index = spr_big_boy_side_sword_animation_left
					break;
			
				case spr_big_boy_side_hookshot_animation_right:
					obj_player.sprite_index = spr_big_boy_side_sword_animation_right
					break;
			}
		}
		else
		{
			switch (obj_player.sprite_index)
			{
				case spr_big_boy_side_hookshot_animation_left:
					obj_player.sprite_index = spr_big_boy_side_bow_animation_left
					break;
			
				case spr_big_boy_side_hookshot_animation_right:
					obj_player.sprite_index = spr_big_boy_side_bow_animation_right
					break;
			}
		}
		instance_destroy();
	}
	
	if physics_test_overlap(x,y,0,obj_hookpole)
	{
		//Drag player towards point hit
		obj_player.phy_position_y += obj_player.spd*3;
		switch (obj_player.sprite_index)
		{
			case spr_big_boy_side_hookshot_animation_left:
				obj_player.sprite_index = spr_big_boy_side_hookshot_animation_left_flying
				break;
			
			case spr_big_boy_side_hookshot_animation_right:
				obj_player.sprite_index = spr_big_boy_side_hookshot_animation_right_flying
				break;
		}
		
		//Destroy hook after player is at final distance
		if (y-10 <= obj_player.y)
		{
			if (obj_player.move == true)
			{
				obj_player.state = scr_move_state;
			}
			else
			{
				obj_player.state = scr_poison_state;
			}
			obj_player.attacked = false;
			if (obj_player.attack == 1)
			{
				if (obj_player.sprite_index == spr_big_boy_side_hookshot_animation_left_flying)
				{
					obj_player.sprite_index = spr_big_boy_side_sword_animation_left
				}
				else
				{
					obj_player.sprite_index = spr_big_boy_side_sword_animation_right
				}
			}
			else
			{
			
				if (obj_player.sprite_index == spr_big_boy_side_hookshot_animation_left_flying)
				{
					obj_player.sprite_index = spr_big_boy_side_bow_animation_left
				}
				else
				{
					obj_player.sprite_index = spr_big_boy_side_bow_animation_right
				}
			}
			instance_destroy();
		}
	}
}
else
{
    phy_rotation = 0;
	
	//Destroy after distance away from player
	if (y < obj_player.y-160)
	{
		if (obj_player.move == true)
		{
			obj_player.state = scr_move_state;
		}
		else
		{
			obj_player.state = scr_poison_state;
		}
		obj_player.attacked = false;
		if (obj_player.attack == 1)
		{
			switch (obj_player.sprite_index)
			{
				case spr_big_boy_side_hookshot_animation_left:
					obj_player.sprite_index = spr_big_boy_side_sword_animation_left
					break;
			
				case spr_big_boy_side_hookshot_animation_right:
					obj_player.sprite_index = spr_big_boy_side_sword_animation_right
					break;
			}
		}
		else
		{
			switch (obj_player.sprite_index)
			{
				case spr_big_boy_side_hookshot_animation_left:
					obj_player.sprite_index = spr_big_boy_side_bow_animation_left
					break;
			
				case spr_big_boy_side_hookshot_animation_right:
					obj_player.sprite_index = spr_big_boy_side_bow_animation_right
					break;
			}
		}
		instance_destroy();
	}
	
	if physics_test_overlap(x,y,0,obj_hookpole)
	{	
		//Drag player towards point hit
		obj_player.phy_position_y -= obj_player.spd*3;
		switch (obj_player.sprite_index)
		{
			case spr_big_boy_side_hookshot_animation_left:
				obj_player.sprite_index = spr_big_boy_side_hookshot_animation_left_flying
				break;
			
			case spr_big_boy_side_hookshot_animation_right:
				obj_player.sprite_index = spr_big_boy_side_hookshot_animation_right_flying
				break;
		}
		
		//Destroy hook after player is at final distance
		if (y+10 >= obj_player.y)
		{
			if (obj_player.move == true)
			{
				obj_player.state = scr_move_state;
			}
			else
			{
				obj_player.state = scr_poison_state;
			}
			obj_player.attacked = false;
			if (obj_player.attack == 1)
			{
				if (obj_player.sprite_index == spr_big_boy_side_hookshot_animation_left_flying)
				{
					obj_player.sprite_index = spr_big_boy_side_sword_animation_left
				}
				else
				{
					obj_player.sprite_index = spr_big_boy_side_sword_animation_right
				}
			}
			else
			{
			
				if (obj_player.sprite_index == spr_big_boy_side_hookshot_animation_left_flying)
				{
					obj_player.sprite_index = spr_big_boy_side_bow_animation_left
				}
				else
				{
					obj_player.sprite_index = spr_big_boy_side_bow_animation_right
				}
			}
			instance_destroy();
		}
	}
}

//Stops hookshot after it has hit hookpole
if !physics_test_overlap(x,y,0,obj_hookpole)
{
	phy_position_x += bhspd;
	phy_position_y += bvspd;
}
else
{
	phy_position_x += 0;
	phy_position_y += 0;
}

//Create chain
instance_create_depth(x,y,depth,obj_hookchain);
