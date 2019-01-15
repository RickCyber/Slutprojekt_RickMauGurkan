/// @description Andvänds med gamla koden, inte längre
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
}
if z <= 1 and inwater >= 3{
	jump = true
}

alarm[1] = 90