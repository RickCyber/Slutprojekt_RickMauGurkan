///scr_slime_check_for_player
if instance_exists(obj_player)
{
	//Get distance to player if player exists
	var dis = point_distance(x,y,obj_player.x,obj_player.y);
	//Chase player if distance towards player is within its sight otherwise chose wether to stand still or chase
	if (dis < sight)
	{
		state = scr_slime_chase;
		targetx = obj_player.x;
		targety = obj_player.y;
	}
	else
	{
		scr_slime_choose_next_state();
	}
}
else
{
	scr_slime_choose_next_state();
}