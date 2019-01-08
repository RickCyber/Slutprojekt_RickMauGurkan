/// @description
//Resättar speeden, samt regenar hp
if (sprite_index == spr_boss2_down or sprite_index == spr_boss2_up){
	image_speed = 1
	if (hp > 1)
	{
		hp += .02;
	}
}
//When Boss is on 0Hp Do this
if (hp == 0 and fas != 0){
	alarm[0] = 150;
	sprite_index = spr_boss_res
	image_speed = .2
	image_index = 0
	fas +=1
} //När bossen är vid liv och inte har dött så ska den röra sig
else if (hp != 0 and fas != 0)
{
	dir = point_direction(0,0,xdir,ydir);

	hspd = lengthdir_x(spd,dir);
	vspd = lengthdir_y(spd,dir);

	phy_position_x += hspd;
	phy_position_y += vspd;

	if (vspd <= 0)
	{
		sprite_index = spr_boss2_up;
	}
	else
	{
		sprite_index = spr_boss2_down;
	}
}
else //Dö när den är död
{
	fas = 0;
	sprite_index = spr_boss2_ded;
	image_speed = 0
}

//Heala när den går till nästa fas
if (res == true){
	hp += 1.3
	image_blend = c_maroon;
}

//Om man dödat den så ska den ressa
if (hp <= 0){
	hp = 0;
	res = true;
}
else if (hp >= 100){
	hp = 100;
	res = false;
	image_blend = c_white;
}
if (fas == 4){
	fas = 0;
	sprite_index = spr_boss2_ded;
	image_speed = 0
}

image_xscale = sign(hspd)*4;
depth = -y