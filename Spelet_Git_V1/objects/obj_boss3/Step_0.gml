/// @description Insert description here

depth = -y //Vanliga Dpeth

if (sleep == true and obj_player.y < 606 and room == rm_final_boss)
{
	instance_create_depth(536,680,depth,obj_final_boss_1);
	scr_start_dialog(obj_dialog_holder,obj_dialog_holder.d_boss_second_text);
	obj_player.state = scr_freeze_state;
	switch (obj_player.sprite_index)
	{
		case spr_big_boy_side_bow_animation_left:
			obj_player.sprite_index = spr_big_boy_side_bow_breath_left;
			break;
		
		case spr_big_boy_side_bow_animation_right:
			obj_player.sprite_index = spr_big_boy_side_bow_breath_right;
			break;
			
		case spr_big_boy_side_sword_animation_left:
			obj_player.sprite_index = spr_big_boy_side_sword_breath_left;
			break;
		
		case spr_big_boy_side_sword_animation_right:
			obj_player.sprite_index = spr_big_boy_side_sword_breath_right;
			break;
	}
}

hp += .02

if (hp <= 0 and res == false){
	fas +=1
	res = true
	hittable = false
}

if (z >= 11)
{
	hittable = false;
}

if (res == true)
{
	hp += 1.3
	sprite_index = spr_Boss_3_ansikte_res;
}

if (sprite_index == spr_Boss_3_ansikte_res)
{
	if (image_index >= 7)
	{
		image_index = 8;
	}
}

if (res == true and hp >= 100)
{
	alarm[1] = 1;
	res = false;
}

if (hp >= 100){
	hp = 100;
	}

if (room == rm_boss_3 and fas == 3)
{
	fas = 4;
}

if (fas == 4){
	fas = 0;
	if (instance_exists(obj_final_boss_2))
	{
		instance_destroy(obj_final_boss_2);
	}
	if (room == rm_boss_3)
	{
		instance_create_depth(544,400,depth,obj_amulet);
	}
	instance_destroy();
}

if (fas == 1)
{
	if dead == false{ //Om den är inte död
	if sleep == false{ //Om den inte sover
		if z >= 30{ //Inte helt hundra, kan vara gammal
			collition = true
		}
		else{
			collition = false
		}
		if jump == true{//När den hoppar resettas inwater
			inwater = 0
			firecircle = false; //Resetta firecircle när den åker upp
			if z >= 90{//Gör så att den fadar ut
				image_alpha *= 0.83
			}
			if tick <= 50{//
				if z >= 350{
					z = 290
					phy_position_x = obj_player.x
					phy_position_y = obj_player.y
					tick += 1
				}
				z += 2.5
				z *= 1.08
				if tick >= 2{
					if !instance_exists(obj_boss3_land){
						instance_create_depth(obj_boss3.x,obj_boss3.y,depth,obj_boss3_land)
					}
				}
			}
			else{
				image_alpha = 0.01
				jump = false;
				tick = 0;
			}
		}
		else{
			//Z-axi gravity
			z_spd -= .5
			image_alpha *= 1.26
			if (z >= 20 and sprite_index != spr_Boss_3_ansikte_land)
			{
				sprite_index = spr_Boss_3_ansikte_fall_1;
			}
			if (z >= 215 and z <= 225 and !place_meeting(x,y,obj_water)){
				if !audio_is_playing(snd_bosshitfloor){
					audio_play_sound(snd_bosshitfloor,10,false)
				}
			}
			else if (z >= 215 and z <= 225 and place_meeting(x,y,obj_water)){
				if !audio_is_playing(snd_bosslandwater){
					audio_play_sound(snd_bosslandwater,10,false)
				}
			}
		}
	}
	}
	//Check if collition with floor
	if !place_meeting(x,y,obj_water){
		hittable = false
		if (jump == true)
		{
			res = false;
		}
		if ((z + z_spd) < 0){
			while((z + sign(z_spd)) > 0){
				z += sign(z_spd)
			}
			if (abs(z_spd) > 1.5){
				z_spd *= -0.7
			}
			else{
				z_spd = 0
			}
		}
		else{
			z += z_spd
		}
	}
	else{
		if (z <= 10)
		{
			if (res == false)
			{
				hittable = true;
			}
		}
		if ((z + z_spd) < 0){
			while((z + sign(z_spd)) > 0){
				z += sign(z_spd)
			}
			if (abs(z_spd) > 1.5){
				z_spd *= -0.01
			}
			else{
				z_spd = 0
			}
		}
		else{
			z += z_spd
		}

	}

	coluor = image_blend;

	if hittable == false{
		image_blend = c_white
	
		if z <= 1{
			image_blend = c_white
			
			if (land == false)
			{
				sprite_index = spr_Boss_3_ansikte_land;
				land = true;
			}
		
			if (sprite_index == spr_Boss_3_ansikte_land and image_index >= 5)
			{
				sprite_index = spr_Boss_3_ansikte_2;
			}
			
			if physics_test_overlap(x,y,0,obj_player)
			{
				var dir = point_direction(x,y,obj_player.x,obj_player.y)
				var xforce = lengthdir_x(knockback,dir);
				var yforce = lengthdir_y(knockback,dir);
				with (obj_player)
				{
					physics_apply_force(x,y,xforce,yforce)
				}
				obj_player.hp -= 5;
			}
		
			if (firecircle == false)
			{
				instance_create_depth(x+10,y+10,0,obj_firecircle)
				instance_create_depth(x+10,y-10,0,obj_firecircle)
				instance_create_depth(x-10,y+10,0,obj_firecircle)
				instance_create_depth(x-10,y-10,0,obj_firecircle)
				instance_create_depth(x+10,y,0,obj_firecircle)
				instance_create_depth(x-10,y,0,obj_firecircle)
				instance_create_depth(x,y+10,0,obj_firecircle)
				instance_create_depth(x,y-10,0,obj_firecircle)
			}
			firecircle = true;
			
			if physics_test_overlap(x,y,0,obj_pil)
			{
				instance_destroy(obj_pil);
			}
			
			if physics_test_overlap(x,y,0,obj_hookshot)
			{
				obj_player.state = scr_move_state;
				obj_player.attacked = false;
				instance_destroy(obj_hookshot);
				
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
			}
		}
	}
	else if z <= 1{
		sprite_index = spr_Boss_3_ansikte_2;
		image_blend = c_white
		if physics_test_overlap(x,y,0,obj_player)
		{
			var dir = point_direction(x,y,obj_player.x,obj_player.y)
			var xforce = lengthdir_x(knockback,dir);
			var yforce = lengthdir_y(knockback,dir);
			with (obj_player)
			{
				physics_apply_force(x,y,xforce,yforce)
			}
			obj_player.hp -= 5;
		}
		
		if (hittable == true and res == false)
		{
			sprite_index = spr_Boss_3_ansikte_hittable;
			
			if physics_test_overlap(x,y,0,obj_pil)
			{
				instance_destroy(obj_pil);
				hp -= 20;
			}
			
			if physics_test_overlap(x,y,0,obj_hookshot)
			{
				hp -= 10;
				obj_player.state = scr_move_state;
				obj_player.attacked = false;
				instance_destroy(obj_hookshot);
				
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
			}
		}
	}


	//Limit z_speed
	z_spd = clamp(z_spd, -z_spd_max, z_spd_max)
	if image_alpha <= 0{
		image_alpha = 0
	}
	else if image_alpha >= 1{
		image_alpha = 1
	}
}

if (fas == 2)
{
	if dead == false{ //Om den är inte död
	if sleep == false{ //Om den inte sover
		if z >= 30{ //Inte helt hundra, kan vara gammal
			collition = true
		}
		else{
			collition = false
		}
		if jump == true{//När den hoppar resettas inwater
			inwater = 0
			firecircle = false; //Resetta firecircle när den åker upp
			if z >= 90{//Gör så att den fadar ut
				image_alpha *= 0.83
			}
			if tick <= 50{//
				if z >= 350{
					z = 290
					if (flamepos == 0)
					{
						phy_position_x = obj_player.x
						
						if (obj_player.y < 228)
						{
							phy_position_y = 128;
						}
						else
						{
							phy_position_y = obj_player.y-100
						}
					}
					else if (flamepos == 1)
					{
						phy_position_x = obj_player.x
						
						if (obj_player.y > 540)
						{
							phy_position_y = 640;
						}
						else
						{
							phy_position_y = obj_player.y+100
						}
					}
					else if (flamepos == 2)
					{
						phy_position_y = obj_player.y
						
						if (obj_player.x < 228)
						{
							phy_position_x = 128;
						}
						else
						{
							phy_position_x = obj_player.x-100
						}
					}
					else if (flamepos == 3)
					{
						phy_position_y = obj_player.y
						
						if (obj_player.x > 860)
						{
							phy_position_x = 960;
						}
						else
						{
							phy_position_x = obj_player.x+100
						}
					}
					tick += 1
				}
				z += 2.5
				z *= 1.08
				if tick >= 2{
					if !instance_exists(obj_boss3_land){
						instance_create_depth(obj_boss3.x,obj_boss3.y,depth,obj_boss3_land)
					}
				}
			}
			else{
				image_alpha = 0.01
				jump = false;
				tick = 0;
				if (z >= 20 and sprite_index != spr_Boss_3_ansikte_land)
				{
					sprite_index = spr_Boss_3_ansikte_fall_1;
				}
				if (z >= 215 and z <= 225){
					if !audio_is_playing(snd_bosshitfloor){
						audio_play_sound(snd_bosshitfloor,10,false)
					}
				}
			}
		}
		else{
			//Z-axi gravity
			z_spd -= .5
			image_alpha *= 1.26
		}
	}
	}
	//Check if collition with floor
	if !place_meeting(x,y,obj_water){
		hittable = false
		if (jump == true)
		{
			res = false;
		}
		if ((z + z_spd) < 0){
			while((z + sign(z_spd)) > 0){
				z += sign(z_spd)
			}
			if (abs(z_spd) > 1.5){
				z_spd *= -0.7
			}
			else{
				z_spd = 0
			}
		}
		else{
			z += z_spd
		}
	}
	else{
		if (z <= 10)
		{
			if (res == false)
			{
				hittable = true;
			}
		}
		if ((z + z_spd) < 0){
			while((z + sign(z_spd)) > 0){
				z += sign(z_spd)
			}
			if (abs(z_spd) > 1.5){
				z_spd *= -0.01
			}
			else{
				z_spd = 0
			}
		}
		else{
			z += z_spd
		}

	}

	coluor = image_blend;

	if hittable == false{
		image_blend = c_white
	
		if z <= 1{
		
		sprite_index = spr_Boss_3_ansikte_Attack;
		
		image_blend = c_white
		if physics_test_overlap(x,y,0,obj_player)
		{
			var dir = point_direction(x,y,obj_player.x,obj_player.y)
			var xforce = lengthdir_x(knockback,dir);
			var yforce = lengthdir_y(knockback,dir);
			with (obj_player)
			{
				physics_apply_force(x,y,xforce,yforce)
			}
			obj_player.hp -= 5;
		}
			if (firecircle == false)
			{
				if (flamepos == 0)
				{
					instance_create_depth(x,y+10,0,obj_flamethrower)
				}
				else if (flamepos == 1)
				{
					instance_create_depth(x,y-10,0,obj_flamethrower)
				}
				else if (flamepos == 2)
				{
					instance_create_depth(x+10,y,0,obj_flamethrower)
				}
				else if (flamepos == 3)
				{
					instance_create_depth(x-10,y,0,obj_flamethrower)
				}
			}
		
		firecircle = true;
		
		if physics_test_overlap(x,y,0,obj_pil)
			{
				instance_destroy(obj_pil);
			}
			
			if physics_test_overlap(x,y,0,obj_hookshot)
			{
				obj_player.state = scr_move_state;
				obj_player.attacked = false;
				instance_destroy(obj_hookshot);
				
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
			}
		}
	}
	else if z <= 1{
		sprite_index = spr_Boss_3_ansikte_2;
		image_blend = c_white
		if physics_test_overlap(x,y,0,obj_player)
		{
			var dir = point_direction(x,y,obj_player.x,obj_player.y)
			var xforce = lengthdir_x(knockback,dir);
			var yforce = lengthdir_y(knockback,dir);
			with (obj_player)
			{
				physics_apply_force(x,y,xforce,yforce)
			}
			obj_player.hp -= 5;
		}
		
		if (hittable == true and res == false)
		{
			sprite_index = spr_Boss_3_ansikte_hittable;
			
			if physics_test_overlap(x,y,0,obj_pil)
			{
				instance_destroy(obj_pil);
				hp -= 20;
			}
			
			if physics_test_overlap(x,y,0,obj_hookshot)
			{
				hp -= 10;
				obj_player.state = scr_move_state;
				obj_player.attacked = false;
				instance_destroy(obj_hookshot);
				
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
			}
		}
	}

	//Limit z_speed
	z_spd = clamp(z_spd, -z_spd_max, z_spd_max)
	if image_alpha <= 0{
		image_alpha = 0
	}
	else if image_alpha >= 1{
		image_alpha = 1
	}
}

if (fas == 3)
{
	if dead == false{ //Om den är inte död
	if sleep == false{ //Om den inte sover
		if z >= 30{ //Inte helt hundra, kan vara gammal
			collition = true
		}
		else{
			collition = false
		}
		if jump == true{//När den hoppar resettas inwater
			inwater = 0
			firecircle = false; //Resetta firecircle när den åker upp
			if z >= 90{//Gör så att den fadar ut
				image_alpha *= 0.83
			}
			if tick <= 50{//
				if z >= 350{
					z = 290
					if (flamepos == 0)
					{
						phy_position_x = obj_player.x
						
						if (obj_player.y < 228)
						{
							phy_position_y = 128;
						}
						else
						{
							phy_position_y = obj_player.y-100
						}
					}
					else if (flamepos == 1)
					{
						phy_position_x = obj_player.x
						
						if (obj_player.y > 540)
						{
							phy_position_y = 640;
						}
						else
						{
							phy_position_y = obj_player.y+100
						}
					}
					else if (flamepos == 2)
					{
						phy_position_y = obj_player.y
						
						if (obj_player.x < 228)
						{
							phy_position_x = 128;
						}
						else
						{
							phy_position_x = obj_player.x-100
						}
					}
					else if (flamepos == 3)
					{
						phy_position_y = obj_player.y
						
						if (obj_player.x > 860)
						{
							phy_position_x = 960;
						}
						else
						{
							phy_position_x = obj_player.x+100
						}
					}
					else
					{
						phy_position_x = obj_player.x
						phy_position_y = obj_player.y
					}
					tick += 1
				}
				z += 2.5
				z *= 1.08
				if tick >= 2{
					if !instance_exists(obj_boss3_land){
						instance_create_depth(obj_boss3.x,obj_boss3.y,depth,obj_boss3_land)
					}
				}
			}
			else{
				image_alpha = 0.01
				jump = false;
				tick = 0;
				if (z >= 20 and sprite_index != spr_Boss_3_ansikte_land)
				{
					sprite_index = spr_Boss_3_ansikte_fall_1;
				}
				if (z >= 215 and z <= 225){
					if !audio_is_playing(snd_bosshitfloor){
						audio_play_sound(snd_bosshitfloor,10,false)
					}
				}
			}
		}
		else{
			//Z-axi gravity
			z_spd -= .5
			image_alpha *= 1.26
		}
	}
	}
	//Check if collition with floor
	if !place_meeting(x,y,obj_water){
		hittable = false
		if (jump == true)
		{
			res = false;
		}
		if ((z + z_spd) < 0){
			while((z + sign(z_spd)) > 0){
				z += sign(z_spd)
			}
			if (abs(z_spd) > 1.5){
				z_spd *= -0.7
			}
			else{
				z_spd = 0
			}
		}
		else{
			z += z_spd
		}
	}
	else{
		if (z <= 10)
		{
			if (res == false)
			{
				hittable = true;
			}
		}
		if ((z + z_spd) < 0){
			while((z + sign(z_spd)) > 0){
				z += sign(z_spd)
			}
			if (abs(z_spd) > 1.5){
				z_spd *= -0.01
			}
			else{
				z_spd = 0
			}
		}
		else{
			z += z_spd
		}

	}

	coluor = image_blend;

	if hittable == false{
		image_blend = c_white
	
		if z <= 1{
		image_blend = c_white
		if physics_test_overlap(x,y,0,obj_player)
		{
			var dir = point_direction(x,y,obj_player.x,obj_player.y)
			var xforce = lengthdir_x(knockback,dir);
			var yforce = lengthdir_y(knockback,dir);
			with (obj_player)
			{
				physics_apply_force(x,y,xforce,yforce)
			}
			obj_player.hp -= 5;
		}
		if (firecircle == false)
		{
			if (flamepos > 3)
			{
				if (land == false)
				{
					sprite_index = spr_Boss_3_ansikte_land;
					land = true;
				}
				
				if (sprite_index == spr_Boss_3_ansikte_land and image_index >= 5)
				{
					sprite_index = spr_Boss_3_ansikte_2;
					
				}
				
				instance_create_depth(x+10,y+10,0,obj_firecircle)
				instance_create_depth(x+10,y-10,0,obj_firecircle)
				instance_create_depth(x-10,y+10,0,obj_firecircle)
				instance_create_depth(x-10,y-10,0,obj_firecircle)
				instance_create_depth(x+10,y,0,obj_firecircle)
				instance_create_depth(x-10,y,0,obj_firecircle)
				instance_create_depth(x,y+10,0,obj_firecircle)
				instance_create_depth(x,y-10,0,obj_firecircle)
			}
			else
			{
				sprite_index = spr_Boss_3_ansikte_Attack;
				
				if (flamepos == 0)
				{
					instance_create_depth(x,y+10,0,obj_flamethrower)
				}
				else if (flamepos == 1)
				{
					instance_create_depth(x,y-10,0,obj_flamethrower)
				}
				else if (flamepos == 2)
				{
					instance_create_depth(x+10,y,0,obj_flamethrower)
				}
				else if (flamepos == 3)
				{
					instance_create_depth(x-10,y,0,obj_flamethrower)
				}
			}
		}
		firecircle = true;
		
		if physics_test_overlap(x,y,0,obj_pil)
			{
				instance_destroy(obj_pil);
			}
			
			if physics_test_overlap(x,y,0,obj_hookshot)
			{
				obj_player.state = scr_move_state;
				obj_player.attacked = false;
				instance_destroy(obj_hookshot);
				
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
			}
		}
	}
	else if z <= 1{
		sprite_index = spr_Boss_3_ansikte_2;
		image_blend = c_white
		if physics_test_overlap(x,y,0,obj_player)
		{
			var dir = point_direction(x,y,obj_player.x,obj_player.y)
			var xforce = lengthdir_x(knockback,dir);
			var yforce = lengthdir_y(knockback,dir);
			with (obj_player)
			{
				physics_apply_force(x,y,xforce,yforce)
			}
			obj_player.hp -= 5;
		}
		
		if (hittable == true and res == false)
		{
			sprite_index = spr_Boss_3_ansikte_hittable;
			
			if physics_test_overlap(x,y,0,obj_pil)
			{
				instance_destroy(obj_pil);
				hp -= 20;
			}
			
			if physics_test_overlap(x,y,0,obj_hookshot)
			{
				hp -= 10;
				obj_player.state = scr_move_state;
				obj_player.attacked = false;
				instance_destroy(obj_hookshot);
				
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
			}
		}
	}
	
	//Limit z_speed
	z_spd = clamp(z_spd, -z_spd_max, z_spd_max)
	if image_alpha <= 0{
		image_alpha = 0
	}
	else if image_alpha >= 1{
		image_alpha = 1
	}
}

//Gammal kod, fungerar men inte nöjd med
/*
spd += .2
image_xscale += .004
image_yscale += .004
shad -= .004 
	
if (jump == true){
	phy_position_x = Approach(x, targetX, abs(lengthdir_x(spd,dir)));
	phy_position_y = Approach(y, targetY, abs(lengthdir_y(spd,dir))); 
	if (z < distanceTotal/2){
		
		spd += .2

	}
	else{
		jump = false
	}
}
if jump == false{
	//Z-axi gravity
	z_spd -= .3
}