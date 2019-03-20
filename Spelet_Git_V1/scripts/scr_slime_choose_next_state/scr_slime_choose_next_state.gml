///scr_slime_choose_next_state

sprite_index = spr_slime_right;

//Either stand still or wander around while not chasing
if (alarm[2] <= 0)
{
	state = choose(scr_slime_wander, scr_slime_idle);
	alarm[2] = room_speed*irandom_range(2,3);
	targetx = random(room_width);
	targety = random(room_height);
}