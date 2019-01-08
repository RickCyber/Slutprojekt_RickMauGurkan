///scr_zombie_choose_next_state

sprite_index = spr_player_down;

//Either stand still or wander around while not chasing
if (alarm[2] <= 0)
{
	state = choose(scr_zombie_wander, scr_zombie_idle);
	alarm[2] = room_speed*irandom_range(2,4);
	targetx = random(room_width);
	targety = random(room_height);
}