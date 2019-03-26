/// @description Resetta Jump
// You can write your code in this editor
targetX = obj_player.phy_position_x;
targetY = obj_player.phy_position_y;
dir = point_direction(x,y,targetX,targetY);
distanceTotal = point_distance(x,y,targetX,targetY);
distanceRemaining = distanceTotal;
//audio_sound_pitch(snFireball1,random_range(0.9,1.1));
//audio_play_sound(snFireball1,1,false);

spd = 5;
if place_meeting(x,y,obj_water){
	inwater += 1;
}
else if z <= 1{
	jump = true
	land = false;
	sprite_index = spr_Boss_3_ansikte_2;
	if (fas == 2)
	{
		flamepos = irandom_range(0,3);
	}
	else if (fas == 3)
	{
		flamepos = irandom_range(0,7);
	}
}
if z <= 1 and inwater >= 3{
	jump = true
	land = false;
	if (fas == 2)
	{
		flamepos = irandom_range(0,3);
	}
	else if (fas == 3)
	{
		flamepos = irandom_range(0,7);
	}
}

alarm[2] = 90;


/*
if (fas == 1)
{
	if (hittable == false)
	{
		if (hp > 4)
		{
			alarm[1] = 90
		}
		else
		{
			alarm[1] = 270
		}
	}
	else
	{
		alarm[1] = 90
	}
}
else if (fas == 2)
{
	if (hittable == false)
	{
		alarm[1] = 270
	}
	else
	{
		alarm[1] = 90
	}
}
else if (fas == 3)
{
	if (flamepos > 3)
	{
		alarm[1] = 90
	}
	else
	{
		if (hittable == false)
		{
			alarm[1] = 270
		}
		else
		{
			alarm[1] = 90
		}
	}
}*/