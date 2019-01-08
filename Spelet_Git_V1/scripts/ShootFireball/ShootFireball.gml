with (instance_create_layer(obj_boss.x,obj_boss.y-6,layer,obj_firethrow))
{
	targetX = obj_player.phy_position_x;
	targetY = obj_player.phy_position_y;
	direction = point_direction(x,y,targetX,targetY);
	distanceTotal = point_distance(x,y,targetX,targetY);
	distanceRemaining = distanceTotal;
	//audio_sound_pitch(snFireball1,random_range(0.9,1.1));
	//audio_play_sound(snFireball1,1,false);
	peakHeight = min(max(0,distanceTotal - 64)*0.2,150);
	spd = 5;
}
