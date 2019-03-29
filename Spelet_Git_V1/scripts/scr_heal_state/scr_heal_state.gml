///scr_heal_state

if (hp < 100)
{
	hp += 1;
}
else
{
	state = scr_move_state;
}