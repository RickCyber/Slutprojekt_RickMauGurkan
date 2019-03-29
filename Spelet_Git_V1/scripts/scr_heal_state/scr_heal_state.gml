///scr_heal_state

if (hp < 100)
{
	hp += .5;
}
else
{
	state = scr_move_state;
}