/// @description Insert description here

depth = -y //Vanliga Dpeth


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
		}
	}
}
//Check if collition with floor
if !place_meeting(x,y,obj_water){
	hittable = false
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
	hittable = true
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
	image_blend = c_aqua
	if physics_test_overlap(x,y,0,obj_player)
	{
		var dir = point_direction(x,y,obj_player.x,obj_player.y)
		var xforce = lengthdir_x(knockback,dir);
		var yforce = lengthdir_y(knockback,dir);
		with (obj_player)
		{
			physics_apply_force(x,y,xforce,yforce)
		}
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
	}
}
else if z <= 1{
	image_blend = c_aqua
	if physics_test_overlap(x,y,0,obj_player)
	{
		var dir = point_direction(x,y,obj_player.x,obj_player.y)
		var xforce = lengthdir_x(knockback,dir);
		var yforce = lengthdir_y(knockback,dir);
		with (obj_player)
		{
			physics_apply_force(x,y,xforce,yforce)
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