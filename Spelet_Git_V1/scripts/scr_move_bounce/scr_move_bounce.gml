if (other.place == 1)
{
	if (vspd < 0)
	{
		ydir = random_range(-10,0)/10;
		xdir = 1;
	}
	else
	{
		ydir = random_range(0,10)/10;
		xdir = 1;
	}
}
else if (other.place == 2)
{
	if (hspd < 0)
	{
		ydir = 1;
		xdir = random_range(-10,0)/10;
	}
	else
	{
		ydir = 1;
		xdir = random_range(0,10)/10;
	}
}
else if (other.place == 3)
{
	if (vspd < 0)
	{
		ydir = random_range(-10,0)/10;
		xdir = -1;
	}
	else
	{
		ydir = random_range(0,10)/10;
		xdir = -1;
	}
}
else if (other.place == 4)
{
	if (hspd < 0)
	{
		ydir = -1;
		xdir = random_range(-10,0)/10;
	}
	else
	{
		ydir = -1;
		xdir = random_range(0,10)/10;
	}
}